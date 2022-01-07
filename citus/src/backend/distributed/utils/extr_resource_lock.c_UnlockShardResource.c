
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int LOCKTAG ;
typedef int LOCKMODE ;


 int LockRelease (int *,int ,int const) ;
 int MyDatabaseId ;
 int SET_LOCKTAG_SHARD_RESOURCE (int ,int ,int ) ;

void
UnlockShardResource(uint64 shardId, LOCKMODE lockmode)
{
 LOCKTAG tag;
 const bool sessionLock = 0;

 SET_LOCKTAG_SHARD_RESOURCE(tag, MyDatabaseId, shardId);

 LockRelease(&tag, lockmode, sessionLock);
}
