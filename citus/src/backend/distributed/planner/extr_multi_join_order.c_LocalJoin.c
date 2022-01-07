
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32 ;
typedef int Var ;
struct TYPE_9__ {int relationId; int rangeTableId; } ;
typedef TYPE_1__ TableEntry ;
struct TYPE_10__ {char partitionMethod; TYPE_1__* anchorTable; int * partitionColumn; } ;
typedef int Oid ;
typedef int List ;
typedef int JoinType ;
typedef TYPE_2__ JoinOrderNode ;


 int CoPartitionedTables (int ,int ) ;
 int JoinOnColumns (int *,int *,int *) ;
 int LOCAL_PARTITION_JOIN ;
 TYPE_2__* MakeJoinOrderNode (TYPE_1__*,int ,int *,char,TYPE_1__*) ;
 int * PartitionColumn (int ,int ) ;
 char PartitionMethod (int ) ;

__attribute__((used)) static JoinOrderNode *
LocalJoin(JoinOrderNode *currentJoinNode, TableEntry *candidateTable,
    List *applicableJoinClauses, JoinType joinType)
{
 JoinOrderNode *nextJoinNode = ((void*)0);
 Oid relationId = candidateTable->relationId;
 uint32 tableId = candidateTable->rangeTableId;
 Var *candidatePartitionColumn = PartitionColumn(relationId, tableId);
 Var *currentPartitionColumn = currentJoinNode->partitionColumn;
 char candidatePartitionMethod = PartitionMethod(relationId);
 char currentPartitionMethod = currentJoinNode->partitionMethod;
 TableEntry *currentAnchorTable = currentJoinNode->anchorTable;
 bool joinOnPartitionColumns = 0;
 bool coPartitionedTables = 0;





 if (currentAnchorTable == ((void*)0))
 {
  return ((void*)0);
 }


 if (currentPartitionMethod != candidatePartitionMethod)
 {
  return ((void*)0);
 }

 joinOnPartitionColumns = JoinOnColumns(currentPartitionColumn,
             candidatePartitionColumn,
             applicableJoinClauses);
 if (!joinOnPartitionColumns)
 {
  return ((void*)0);
 }


 coPartitionedTables = CoPartitionedTables(currentAnchorTable->relationId, relationId);

 if (!coPartitionedTables)
 {
  return ((void*)0);
 }

 nextJoinNode = MakeJoinOrderNode(candidateTable, LOCAL_PARTITION_JOIN,
          currentPartitionColumn,
          currentPartitionMethod,
          currentAnchorTable);


 return nextJoinNode;
}
