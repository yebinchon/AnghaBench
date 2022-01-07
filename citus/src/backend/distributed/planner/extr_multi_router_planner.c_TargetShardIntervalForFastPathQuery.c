
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* jointree; } ;
struct TYPE_6__ {int * quals; } ;
typedef TYPE_2__ Query ;
typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef int Expr ;
typedef int Const ;


 int Assert (int ) ;
 int ExtractFirstDistributedTableId (TYPE_2__*) ;
 int FastPathRouterQuery (TYPE_2__*) ;
 int * PruneShards (int ,int,int ,int **) ;
 int list_length (int *) ;
 int make_ands_implicit (int *) ;

__attribute__((used)) static List *
TargetShardIntervalForFastPathQuery(Query *query, Const **partitionValueConst,
         bool *isMultiShardQuery)
{
 Const *queryPartitionValueConst = ((void*)0);

 Oid relationId = ExtractFirstDistributedTableId(query);
 Node *quals = query->jointree->quals;

 int relationIndex = 1;

 List *prunedShardIntervalList =
  PruneShards(relationId, relationIndex, make_ands_implicit((Expr *) quals),
     &queryPartitionValueConst);


 Assert(FastPathRouterQuery(query));

 if (list_length(prunedShardIntervalList) > 1)
 {
  *isMultiShardQuery = 1;
 }
 else if (list_length(prunedShardIntervalList) == 1 &&
    partitionValueConst != ((void*)0))
 {

  *partitionValueConst = queryPartitionValueConst;
 }

 return prunedShardIntervalList;
}
