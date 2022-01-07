
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64 ;
typedef int LOCKTAG ;
typedef int LOCKMODE ;


 int AssertArg (int) ;
 scalar_t__ INVALID_SHARD_ID ;
 int LockAcquire (int *,int ,int const,int const) ;
 int MyDatabaseId ;
 int SET_LOCKTAG_SHARD_RESOURCE (int ,int ,scalar_t__) ;

void
LockShardResource(uint64 shardId, LOCKMODE lockmode)
{
 LOCKTAG tag;
 const bool sessionLock = 0;
 const bool dontWait = 0;

 AssertArg(shardId != INVALID_SHARD_ID);

 SET_LOCKTAG_SHARD_RESOURCE(tag, MyDatabaseId, shardId);

 (void) LockAcquire(&tag, lockmode, sessionLock, dontWait);
}
