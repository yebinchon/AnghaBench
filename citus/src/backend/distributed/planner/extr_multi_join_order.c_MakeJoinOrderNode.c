
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Var ;
typedef int TableEntry ;
struct TYPE_4__ {char partitionMethod; int * anchorTable; int joinClauseList; int * partitionColumn; int joinType; int joinRuleType; int * tableEntry; } ;
typedef int JoinRuleType ;
typedef TYPE_1__ JoinOrderNode ;


 int JOIN_INNER ;
 int NIL ;
 TYPE_1__* palloc0 (int) ;

JoinOrderNode *
MakeJoinOrderNode(TableEntry *tableEntry, JoinRuleType joinRuleType,
      Var *partitionColumn, char partitionMethod, TableEntry *anchorTable)
{
 JoinOrderNode *joinOrderNode = palloc0(sizeof(JoinOrderNode));
 joinOrderNode->tableEntry = tableEntry;
 joinOrderNode->joinRuleType = joinRuleType;
 joinOrderNode->joinType = JOIN_INNER;
 joinOrderNode->partitionColumn = partitionColumn;
 joinOrderNode->partitionMethod = partitionMethod;
 joinOrderNode->joinClauseList = NIL;
 joinOrderNode->anchorTable = anchorTable;

 return joinOrderNode;
}
