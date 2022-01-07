
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TableEntry ;
typedef int OpExpr ;
typedef int List ;
typedef int JoinType ;
typedef int JoinOrderNode ;


 int DUAL_PARTITION_JOIN ;
 int * DualPartitionJoinClause (int *) ;
 int * MakeJoinOrderNode (int *,int ,int *,int ,int *) ;
 int REDISTRIBUTE_BY_HASH ;

__attribute__((used)) static JoinOrderNode *
DualPartitionJoin(JoinOrderNode *currentJoinNode, TableEntry *candidateTable,
      List *applicableJoinClauses, JoinType joinType)
{
 OpExpr *joinClause = DualPartitionJoinClause(applicableJoinClauses);
 if (joinClause)
 {

  return MakeJoinOrderNode(candidateTable,
         DUAL_PARTITION_JOIN,
         ((void*)0),
         REDISTRIBUTE_BY_HASH,
         ((void*)0));
 }

 return ((void*)0);
}
