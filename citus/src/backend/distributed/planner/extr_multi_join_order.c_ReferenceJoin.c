
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int relationId; } ;
typedef TYPE_2__ TableEntry ;
struct TYPE_11__ {int anchorTable; int partitionMethod; int partitionColumn; TYPE_1__* tableEntry; } ;
struct TYPE_9__ {int relationId; } ;
typedef int List ;
typedef scalar_t__ JoinType ;
typedef TYPE_3__ JoinOrderNode ;


 char DISTRIBUTE_BY_NONE ;
 scalar_t__ JOIN_ANTI ;
 scalar_t__ JOIN_FULL ;
 scalar_t__ JOIN_INNER ;
 scalar_t__ JOIN_LEFT ;
 scalar_t__ JOIN_RIGHT ;
 TYPE_3__* MakeJoinOrderNode (TYPE_2__*,int ,int ,int ,int ) ;
 char PartitionMethod (int ) ;
 int REFERENCE_JOIN ;
 int list_length (int *) ;

__attribute__((used)) static JoinOrderNode *
ReferenceJoin(JoinOrderNode *currentJoinNode, TableEntry *candidateTable,
     List *applicableJoinClauses, JoinType joinType)
{
 JoinOrderNode *nextJoinNode = ((void*)0);
 int applicableJoinCount = list_length(applicableJoinClauses);
 char candidatePartitionMethod = PartitionMethod(candidateTable->relationId);
 char leftPartitionMethod = PartitionMethod(currentJoinNode->tableEntry->relationId);
 bool performReferenceJoin = 0;

 if (applicableJoinCount <= 0)
 {
  return ((void*)0);
 }
 if ((joinType == JOIN_INNER || joinType == JOIN_LEFT || joinType == JOIN_ANTI) &&
  candidatePartitionMethod == DISTRIBUTE_BY_NONE)
 {
  performReferenceJoin = 1;
 }
 else if (joinType == JOIN_RIGHT && leftPartitionMethod == DISTRIBUTE_BY_NONE)
 {
  performReferenceJoin = 1;
 }
 else if (joinType == JOIN_FULL && leftPartitionMethod == DISTRIBUTE_BY_NONE &&
    candidatePartitionMethod == DISTRIBUTE_BY_NONE)
 {
  performReferenceJoin = 1;
 }

 if (performReferenceJoin)
 {
  nextJoinNode = MakeJoinOrderNode(candidateTable, REFERENCE_JOIN,
           currentJoinNode->partitionColumn,
           currentJoinNode->partitionMethod,
           currentJoinNode->anchorTable);
 }

 return nextJoinNode;
}
