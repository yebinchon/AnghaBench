
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int TableEntry ;
struct TYPE_5__ {int partitionMethod; int partitionColumn; } ;
typedef int List ;
typedef int JoinType ;
typedef TYPE_1__ JoinOrderNode ;


 int CARTESIAN_PRODUCT ;
 TYPE_1__* MakeJoinOrderNode (int *,int ,int ,int ,int *) ;
 scalar_t__ list_length (int *) ;

__attribute__((used)) static JoinOrderNode *
CartesianProduct(JoinOrderNode *currentJoinNode, TableEntry *candidateTable,
     List *applicableJoinClauses, JoinType joinType)
{
 if (list_length(applicableJoinClauses) == 0)
 {

  return MakeJoinOrderNode(candidateTable, CARTESIAN_PRODUCT,
         currentJoinNode->partitionColumn,
         currentJoinNode->partitionMethod,
         ((void*)0));
 }

 return ((void*)0);
}
