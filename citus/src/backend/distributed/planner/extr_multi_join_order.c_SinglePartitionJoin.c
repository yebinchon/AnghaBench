
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32 ;
typedef int Var ;
struct TYPE_9__ {int rangeTableId; int relationId; } ;
typedef TYPE_1__ TableEntry ;
struct TYPE_10__ {char partitionMethod; scalar_t__ joinRuleType; TYPE_1__* anchorTable; int * partitionColumn; } ;
typedef int OpExpr ;
typedef int Oid ;
typedef int List ;
typedef int JoinType ;
typedef scalar_t__ JoinRuleType ;
typedef TYPE_2__ JoinOrderNode ;


 scalar_t__ CARTESIAN_PRODUCT ;
 char DISTRIBUTE_BY_HASH ;
 char DISTRIBUTE_BY_NONE ;
 scalar_t__ DUAL_PARTITION_JOIN ;
 int EnableSingleHashRepartitioning ;
 scalar_t__ IS_OUTER_JOIN (int ) ;
 TYPE_2__* MakeJoinOrderNode (TYPE_1__*,int ,int *,char,TYPE_1__*) ;
 int * PartitionColumn (int ,int ) ;
 char PartitionMethod (int ) ;
 int SINGLE_HASH_PARTITION_JOIN ;
 int SINGLE_RANGE_PARTITION_JOIN ;
 int * SinglePartitionJoinClause (int *,int *) ;

__attribute__((used)) static JoinOrderNode *
SinglePartitionJoin(JoinOrderNode *currentJoinNode, TableEntry *candidateTable,
     List *applicableJoinClauses, JoinType joinType)
{
 Var *currentPartitionColumn = currentJoinNode->partitionColumn;
 char currentPartitionMethod = currentJoinNode->partitionMethod;
 TableEntry *currentAnchorTable = currentJoinNode->anchorTable;
 JoinRuleType currentJoinRuleType = currentJoinNode->joinRuleType;

 OpExpr *joinClause = ((void*)0);

 Oid relationId = candidateTable->relationId;
 uint32 tableId = candidateTable->rangeTableId;
 Var *candidatePartitionColumn = PartitionColumn(relationId, tableId);
 char candidatePartitionMethod = PartitionMethod(relationId);


 if (IS_OUTER_JOIN(joinType))
 {
  return ((void*)0);
 }





 if (currentJoinRuleType == DUAL_PARTITION_JOIN ||
  currentJoinRuleType == CARTESIAN_PRODUCT)
 {
  return ((void*)0);
 }

 joinClause =
  SinglePartitionJoinClause(currentPartitionColumn, applicableJoinClauses);
 if (joinClause != ((void*)0))
 {
  if (currentPartitionMethod == DISTRIBUTE_BY_HASH)
  {




   if (!EnableSingleHashRepartitioning)
   {
    return ((void*)0);
   }

   return MakeJoinOrderNode(candidateTable, SINGLE_HASH_PARTITION_JOIN,
          currentPartitionColumn,
          currentPartitionMethod,
          currentAnchorTable);
  }
  else
  {
   return MakeJoinOrderNode(candidateTable, SINGLE_RANGE_PARTITION_JOIN,
          currentPartitionColumn,
          currentPartitionMethod,
          currentAnchorTable);
  }
 }


 if (candidatePartitionMethod != DISTRIBUTE_BY_NONE)
 {
  joinClause = SinglePartitionJoinClause(candidatePartitionColumn,
              applicableJoinClauses);
  if (joinClause != ((void*)0))
  {
   if (candidatePartitionMethod == DISTRIBUTE_BY_HASH)
   {




    if (!EnableSingleHashRepartitioning)
    {
     return ((void*)0);
    }

    return MakeJoinOrderNode(candidateTable,
           SINGLE_HASH_PARTITION_JOIN,
           candidatePartitionColumn,
           candidatePartitionMethod,
           candidateTable);
   }
   else
   {
    return MakeJoinOrderNode(candidateTable,
           SINGLE_RANGE_PARTITION_JOIN,
           candidatePartitionColumn,
           candidatePartitionMethod,
           candidateTable);
   }
  }
 }

 return ((void*)0);
}
