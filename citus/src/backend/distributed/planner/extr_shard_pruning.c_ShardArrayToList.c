
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ShardInterval ;
typedef int List ;


 int * NIL ;
 int * lappend (int *,int *) ;

__attribute__((used)) static List *
ShardArrayToList(ShardInterval **shardArray, int length)
{
 List *shardIntervalList = NIL;
 int shardIndex;

 for (shardIndex = 0; shardIndex < length; shardIndex++)
 {
  ShardInterval *shardInterval =
   shardArray[shardIndex];
  shardIntervalList = lappend(shardIntervalList, shardInterval);
 }

 return shardIntervalList;
}
