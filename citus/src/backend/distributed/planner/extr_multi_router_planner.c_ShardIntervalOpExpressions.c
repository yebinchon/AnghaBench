
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Var ;
struct TYPE_4__ {scalar_t__ maxValueExists; scalar_t__ minValueExists; int relationId; } ;
typedef TYPE_1__ ShardInterval ;
typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef int Index ;


 int Assert (int) ;
 int * BuildBaseConstraint (int *) ;
 char DISTRIBUTE_BY_APPEND ;
 char DISTRIBUTE_BY_HASH ;
 char DISTRIBUTE_BY_RANGE ;
 int * MakeInt4Column () ;
 int * NIL ;
 int * PartitionColumn (int ,int ) ;
 char PartitionMethod (int ) ;
 int UpdateConstraint (int *,TYPE_1__*) ;
 int * list_make1 (int *) ;

List *
ShardIntervalOpExpressions(ShardInterval *shardInterval, Index rteIndex)
{
 Oid relationId = shardInterval->relationId;
 char partitionMethod = PartitionMethod(shardInterval->relationId);
 Var *partitionColumn = ((void*)0);
 Node *baseConstraint = ((void*)0);

 if (partitionMethod == DISTRIBUTE_BY_HASH)
 {
  partitionColumn = MakeInt4Column();
 }
 else if (partitionMethod == DISTRIBUTE_BY_RANGE || partitionMethod ==
    DISTRIBUTE_BY_APPEND)
 {
  Assert(rteIndex > 0);
  partitionColumn = PartitionColumn(relationId, rteIndex);
 }
 else
 {

  return NIL;
 }


 baseConstraint = BuildBaseConstraint(partitionColumn);


 if (shardInterval->minValueExists && shardInterval->maxValueExists)
 {
  UpdateConstraint(baseConstraint, shardInterval);
 }

 return list_make1(baseConstraint);
}
