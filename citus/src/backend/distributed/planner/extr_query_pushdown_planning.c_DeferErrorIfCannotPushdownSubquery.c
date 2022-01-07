
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ detail; } ;
struct TYPE_18__ {int * targetList; int * distinctClause; int * groupClause; scalar_t__ havingQual; scalar_t__ hasAggs; scalar_t__ hasWindowFuncs; scalar_t__ groupingSets; scalar_t__ hasForUpdate; scalar_t__ cteList; scalar_t__ hasRecursive; scalar_t__ setOperations; scalar_t__ limitCount; scalar_t__ limitOffset; } ;
struct TYPE_17__ {scalar_t__ data; } ;
typedef TYPE_1__* StringInfo ;
typedef TYPE_2__ Query ;
typedef int Node ;
typedef int List ;
typedef TYPE_3__ DeferredErrorMessage ;


 TYPE_3__* DeferErrorIfFromClauseRecurs (TYPE_2__*) ;
 TYPE_3__* DeferErrorIfUnsupportedTableCombination (TYPE_2__*) ;
 TYPE_3__* DeferErrorIfUnsupportedUnionQuery (TYPE_2__*) ;
 TYPE_3__* DeferredError (int ,char*,char*,int *) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int * GroupTargetEntryList (int *,int *) ;
 scalar_t__ HasEmptyJoinTree (TYPE_2__*) ;
 int SafeToPushdownWindowFunction (TYPE_2__*,TYPE_1__**) ;
 scalar_t__ SubqueryPushdown ;
 int TargetListOnPartitionColumn (TYPE_2__*,int *) ;
 scalar_t__ contain_mutable_functions (int *) ;

DeferredErrorMessage *
DeferErrorIfCannotPushdownSubquery(Query *subqueryTree, bool outerMostQueryHasLimit)
{
 bool preconditionsSatisfied = 1;
 char *errorDetail = ((void*)0);
 StringInfo errorInfo = ((void*)0);
 DeferredErrorMessage *deferredError = ((void*)0);

 deferredError = DeferErrorIfUnsupportedTableCombination(subqueryTree);
 if (deferredError)
 {
  return deferredError;
 }

 if (HasEmptyJoinTree(subqueryTree) &&
  contain_mutable_functions((Node *) subqueryTree->targetList))
 {
  preconditionsSatisfied = 0;
  errorDetail = "Subqueries without a FROM clause can only contain immutable "
       "functions";
 }

 if (subqueryTree->limitOffset)
 {
  preconditionsSatisfied = 0;
  errorDetail = "Offset clause is currently unsupported when a subquery "
       "references a column from another query";
 }


 if (subqueryTree->limitCount && !SubqueryPushdown)
 {
  preconditionsSatisfied = 0;
  errorDetail = "Limit in subquery is currently unsupported when a "
       "subquery references a column from another query";
 }





 if (subqueryTree->limitCount && SubqueryPushdown && !outerMostQueryHasLimit)
 {
  preconditionsSatisfied = 0;
  errorDetail = "Limit in subquery without limit in the outermost query is "
       "unsupported";
 }

 if (subqueryTree->setOperations)
 {
  deferredError = DeferErrorIfUnsupportedUnionQuery(subqueryTree);
  if (deferredError)
  {
   return deferredError;
  }
 }

 if (subqueryTree->hasRecursive)
 {
  preconditionsSatisfied = 0;
  errorDetail = "Recursive queries are currently unsupported";
 }

 if (subqueryTree->cteList)
 {
  preconditionsSatisfied = 0;
  errorDetail = "Common Table Expressions are currently unsupported";
 }

 if (subqueryTree->hasForUpdate)
 {
  preconditionsSatisfied = 0;
  errorDetail = "For Update/Share commands are currently unsupported";
 }


 if (subqueryTree->groupClause)
 {
  List *groupClauseList = subqueryTree->groupClause;
  List *targetEntryList = subqueryTree->targetList;
  List *groupTargetEntryList = GroupTargetEntryList(groupClauseList,
                targetEntryList);
  bool groupOnPartitionColumn = TargetListOnPartitionColumn(subqueryTree,
                  groupTargetEntryList);
  if (!groupOnPartitionColumn)
  {
   preconditionsSatisfied = 0;
   errorDetail = "Group by list without partition column is currently "
        "unsupported when a subquery references a column "
        "from another query";
  }
 }


 if (subqueryTree->groupingSets)
 {
  preconditionsSatisfied = 0;
  errorDetail = "could not run distributed query with GROUPING SETS, CUBE, "
       "or ROLLUP";
 }





 if (subqueryTree->hasWindowFuncs && !SafeToPushdownWindowFunction(subqueryTree,
                   &errorInfo))
 {
  errorDetail = (char *) errorInfo->data;
  preconditionsSatisfied = 0;
 }


 if (subqueryTree->hasAggs && (subqueryTree->groupClause == ((void*)0)))
 {
  preconditionsSatisfied = 0;
  errorDetail = "Aggregates without group by are currently unsupported "
       "when a subquery references a column from another query";
 }


 if (subqueryTree->havingQual && (subqueryTree->groupClause == ((void*)0)))
 {
  preconditionsSatisfied = 0;
  errorDetail = "Having qual without group by on partition column is "
       "currently unsupported when a subquery references "
       "a column from another query";
 }


 if (subqueryTree->distinctClause)
 {
  List *distinctClauseList = subqueryTree->distinctClause;
  List *targetEntryList = subqueryTree->targetList;
  List *distinctTargetEntryList = GroupTargetEntryList(distinctClauseList,
                targetEntryList);
  bool distinctOnPartitionColumn =
   TargetListOnPartitionColumn(subqueryTree, distinctTargetEntryList);
  if (!distinctOnPartitionColumn)
  {
   preconditionsSatisfied = 0;
   errorDetail = "Distinct on columns without partition column is "
        "currently unsupported";
  }
 }

 deferredError = DeferErrorIfFromClauseRecurs(subqueryTree);
 if (deferredError)
 {
  preconditionsSatisfied = 0;
  errorDetail = (char *) deferredError->detail;
 }



 if (!preconditionsSatisfied)
 {
  return DeferredError(ERRCODE_FEATURE_NOT_SUPPORTED,
        "cannot push down this subquery",
        errorDetail, ((void*)0));
 }

 return ((void*)0);
}
