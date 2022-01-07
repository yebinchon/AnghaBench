
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Var ;
struct TYPE_3__ {int joinRuleType; } ;
typedef int MultiNode ;
typedef TYPE_1__ MultiJoin ;
typedef int List ;
typedef int JoinType ;


 TYPE_1__* ApplySinglePartitionJoin (int *,int *,int *,int ,int *) ;
 int SINGLE_HASH_PARTITION_JOIN ;

__attribute__((used)) static MultiNode *
ApplySingleHashPartitionJoin(MultiNode *leftNode, MultiNode *rightNode,
        Var *partitionColumn, JoinType joinType,
        List *applicableJoinClauses)
{
 MultiJoin *joinNode =
  ApplySinglePartitionJoin(leftNode, rightNode, partitionColumn, joinType,
         applicableJoinClauses);

 joinNode->joinRuleType = SINGLE_HASH_PARTITION_JOIN;

 return (MultiNode *) joinNode;
}
