
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ targetList; } ;
struct TYPE_10__ {scalar_t__ subquery; int relid; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef TYPE_2__ Query ;
typedef int Node ;
typedef int DeferredErrorMessage ;


 scalar_t__ DISTRIBUTE_BY_APPEND ;
 int * DeferredError (int ,char*,int *,int *) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int * ErrorIfOnConflictNotSupported (TYPE_2__*) ;
 TYPE_1__* ExtractResultRelationRTE (TYPE_2__*) ;
 TYPE_1__* ExtractSelectRangeTableEntry (TYPE_2__*) ;
 scalar_t__ NeedsDistributedPlanning (TYPE_2__*) ;
 scalar_t__ PartitionMethod (int ) ;
 scalar_t__ contain_nextval_expression_walker (int *,int *) ;

__attribute__((used)) static DeferredErrorMessage *
CoordinatorInsertSelectSupported(Query *insertSelectQuery)
{
 RangeTblEntry *insertRte = ((void*)0);
 RangeTblEntry *subqueryRte = ((void*)0);
 Query *subquery = ((void*)0);
 DeferredErrorMessage *deferredError = ((void*)0);

 deferredError = ErrorIfOnConflictNotSupported(insertSelectQuery);
 if (deferredError)
 {
  return deferredError;
 }

 insertRte = ExtractResultRelationRTE(insertSelectQuery);
 if (PartitionMethod(insertRte->relid) == DISTRIBUTE_BY_APPEND)
 {
  return DeferredError(ERRCODE_FEATURE_NOT_SUPPORTED,
        "INSERT ... SELECT into an append-distributed table is "
        "not supported", ((void*)0), ((void*)0));
 }

 subqueryRte = ExtractSelectRangeTableEntry(insertSelectQuery);
 subquery = (Query *) subqueryRte->subquery;

 if (NeedsDistributedPlanning(subquery) &&
  contain_nextval_expression_walker((Node *) insertSelectQuery->targetList, ((void*)0)))
 {
  return DeferredError(ERRCODE_FEATURE_NOT_SUPPORTED,
        "INSERT ... SELECT cannot generate sequence values when "
        "selecting from a distributed table",
        ((void*)0), ((void*)0));
 }

 return ((void*)0);
}
