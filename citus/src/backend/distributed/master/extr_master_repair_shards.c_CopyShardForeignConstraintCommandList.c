
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ShardInterval ;
typedef int List ;


 int CopyShardForeignConstraintCommandListGrouped (int *,int **,int **) ;
 int * NIL ;
 int * list_concat (int *,int *) ;

List *
CopyShardForeignConstraintCommandList(ShardInterval *shardInterval)
{
 List *colocatedShardForeignConstraintCommandList = NIL;
 List *referenceTableForeignConstraintList = NIL;

 CopyShardForeignConstraintCommandListGrouped(shardInterval,
             &
             colocatedShardForeignConstraintCommandList,
             &referenceTableForeignConstraintList);

 return list_concat(colocatedShardForeignConstraintCommandList,
        referenceTableForeignConstraintList);
}
