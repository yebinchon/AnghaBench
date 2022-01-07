
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int LOCKTAG ;
typedef int LOCKMODE ;


 int LockAcquire (int *,int ,int const,int const) ;
 int MyDatabaseId ;
 int SET_LOCKTAG_SHARD_METADATA_RESOURCE (int ,int ,int ) ;

bool
TryLockShardDistributionMetadata(int64 shardId, LOCKMODE lockMode)
{
 LOCKTAG tag;
 const bool sessionLock = 0;
 const bool dontWait = 1;
 bool lockAcquired = 0;

 SET_LOCKTAG_SHARD_METADATA_RESOURCE(tag, MyDatabaseId, shardId);

 lockAcquired = LockAcquire(&tag, lockMode, sessionLock, dontWait);

 return lockAcquired;
}
