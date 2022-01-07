
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ jointree; scalar_t__ groupingSets; scalar_t__ hasForUpdate; scalar_t__ cteList; scalar_t__ hasRecursive; scalar_t__ setOperations; scalar_t__ hasWindowFuncs; scalar_t__ hasSubLinks; } ;
typedef int * StringInfo ;
typedef TYPE_1__ Query ;
typedef int Node ;
typedef int DeferredErrorMessage ;


 int * DeferredError (int ,char*,int *,char const*) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ErrorHintRequired (char const*,TYPE_1__*) ;
 int HasComplexRangeTableType (TYPE_1__*) ;
 int HasTablesample (TYPE_1__*) ;
 int HasUnsupportedJoinWalker (int *,int *) ;
 int SafeToPushdownWindowFunction (TYPE_1__*,int **) ;
 scalar_t__ TargetListContainsSubquery (TYPE_1__*) ;

DeferredErrorMessage *
DeferErrorIfQueryNotSupported(Query *queryTree)
{
 char *errorMessage = ((void*)0);
 bool hasTablesample = 0;
 bool hasUnsupportedJoin = 0;
 bool hasComplexRangeTableType = 0;
 bool preconditionsSatisfied = 1;
 StringInfo errorInfo = ((void*)0);
 const char *errorHint = ((void*)0);
 const char *joinHint = "Consider joining tables on partition column and have "
         "equal filter on joining columns.";
 const char *filterHint = "Consider using an equality filter on the distributed "
        "table's partition column.";





 if (queryTree->hasSubLinks && TargetListContainsSubquery(queryTree))
 {
  preconditionsSatisfied = 0;
  errorMessage = "could not run distributed query with subquery outside the "
        "FROM, WHERE and HAVING clauses";
  errorHint = filterHint;
 }

 if (queryTree->hasWindowFuncs &&
  !SafeToPushdownWindowFunction(queryTree, &errorInfo))
 {
  preconditionsSatisfied = 0;
  errorMessage = "could not run distributed query because the window "
        "function that is used cannot be pushed down";
  errorHint = "Window functions are supported in two ways. Either add "
     "an equality filter on the distributed tables' partition "
     "column or use the window functions with a PARTITION BY "
     "clause containing the distribution column";
 }

 if (queryTree->setOperations)
 {
  preconditionsSatisfied = 0;
  errorMessage = "could not run distributed query with UNION, INTERSECT, or "
        "EXCEPT";
  errorHint = filterHint;
 }

 if (queryTree->hasRecursive)
 {
  preconditionsSatisfied = 0;
  errorMessage = "could not run distributed query with RECURSIVE";
  errorHint = filterHint;
 }

 if (queryTree->cteList)
 {
  preconditionsSatisfied = 0;
  errorMessage = "could not run distributed query with common table expressions";
  errorHint = filterHint;
 }

 if (queryTree->hasForUpdate)
 {
  preconditionsSatisfied = 0;
  errorMessage = "could not run distributed query with FOR UPDATE/SHARE commands";
  errorHint = filterHint;
 }

 if (queryTree->groupingSets)
 {
  preconditionsSatisfied = 0;
  errorMessage = "could not run distributed query with GROUPING SETS, CUBE, "
        "or ROLLUP";
  errorHint = filterHint;
 }

 hasTablesample = HasTablesample(queryTree);
 if (hasTablesample)
 {
  preconditionsSatisfied = 0;
  errorMessage = "could not run distributed query which use TABLESAMPLE";
  errorHint = filterHint;
 }

 hasUnsupportedJoin = HasUnsupportedJoinWalker((Node *) queryTree->jointree, ((void*)0));
 if (hasUnsupportedJoin)
 {
  preconditionsSatisfied = 0;
  errorMessage = "could not run distributed query with join types other than "
        "INNER or OUTER JOINS";
  errorHint = joinHint;
 }

 hasComplexRangeTableType = HasComplexRangeTableType(queryTree);
 if (hasComplexRangeTableType)
 {
  preconditionsSatisfied = 0;
  errorMessage = "could not run distributed query with complex table expressions";
  errorHint = filterHint;
 }



 if (!preconditionsSatisfied)
 {
  bool showHint = ErrorHintRequired(errorHint, queryTree);
  return DeferredError(ERRCODE_FEATURE_NOT_SUPPORTED,
        errorMessage, ((void*)0),
        showHint ? errorHint : ((void*)0));
 }

 return ((void*)0);
}
