
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ jointree; int rtable; int resultRelation; } ;
struct TYPE_6__ {int relid; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef TYPE_2__ Query ;
typedef int PlannerRestrictionContext ;
typedef int Oid ;
typedef int Node ;
typedef int DeferredErrorMessage ;


 int CitusIsVolatileFunction ;
 char DISTRIBUTE_BY_NONE ;
 int * DeferErrorIfUnsupportedSubqueryPushdown (TYPE_2__*,int *) ;
 int * DeferredError (int ,char*,int *,int *) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 scalar_t__ FindNodeCheck (int *,int ) ;
 scalar_t__ HasDangerousJoinUsing (int ,int *) ;
 char PartitionMethod (int ) ;
 TYPE_1__* rt_fetch (int ,int ) ;

__attribute__((used)) static DeferredErrorMessage *
MultiShardModifyQuerySupported(Query *originalQuery,
          PlannerRestrictionContext *plannerRestrictionContext)
{
 DeferredErrorMessage *errorMessage = ((void*)0);
 RangeTblEntry *resultRangeTable = rt_fetch(originalQuery->resultRelation,
              originalQuery->rtable);
 Oid resultRelationOid = resultRangeTable->relid;
 char resultPartitionMethod = PartitionMethod(resultRelationOid);

 if (HasDangerousJoinUsing(originalQuery->rtable, (Node *) originalQuery->jointree))
 {
  errorMessage = DeferredError(ERRCODE_FEATURE_NOT_SUPPORTED,
          "a join with USING causes an internal naming conflict, use "
          "ON instead",
          ((void*)0), ((void*)0));
 }
 else if (FindNodeCheck((Node *) originalQuery, CitusIsVolatileFunction))
 {
  errorMessage = DeferredError(ERRCODE_FEATURE_NOT_SUPPORTED,
          "functions used in UPDATE queries on distributed "
          "tables must not be VOLATILE",
          ((void*)0), ((void*)0));
 }
 else if (resultPartitionMethod == DISTRIBUTE_BY_NONE)
 {
  errorMessage = DeferredError(ERRCODE_FEATURE_NOT_SUPPORTED,
          "only reference tables may be queried when targeting "
          "a reference table with multi shard UPDATE/DELETE queries "
          "with multiple tables ",
          ((void*)0), ((void*)0));
 }
 else
 {
  errorMessage = DeferErrorIfUnsupportedSubqueryPushdown(originalQuery,
                  plannerRestrictionContext);
 }

 return errorMessage;
}
