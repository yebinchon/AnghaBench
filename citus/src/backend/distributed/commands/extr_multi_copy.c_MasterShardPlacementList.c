
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int List ;


 int * FinalizedShardPlacementList (int ) ;
 int * NIL ;
 int * RemoteFinalizedShardPlacementList (int ) ;
 int * masterConnection ;

__attribute__((used)) static List *
MasterShardPlacementList(uint64 shardId)
{
 List *finalizedPlacementList = NIL;
 if (masterConnection == ((void*)0))
 {
  finalizedPlacementList = FinalizedShardPlacementList(shardId);
 }
 else
 {
  finalizedPlacementList = RemoteFinalizedShardPlacementList(shardId);
 }

 return finalizedPlacementList;
}
