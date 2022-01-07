
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int Oid ;
typedef int List ;


 int * LoadShardList (int ) ;
 scalar_t__ linitial (int *) ;

uint64
GetFirstShardId(Oid relationId)
{
 List *shardList = LoadShardList(relationId);
 uint64 *shardIdPointer = (uint64 *) linitial(shardList);

 return (*shardIdPointer);
}
