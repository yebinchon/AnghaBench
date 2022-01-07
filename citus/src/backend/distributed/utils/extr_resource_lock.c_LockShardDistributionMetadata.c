
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

void
LockShardDistributionMetadata(int64 shardId, LOCKMODE lockMode)
{
 LOCKTAG tag;
 const bool sessionLock = 0;
 const bool dontWait = 0;

 SET_LOCKTAG_SHARD_METADATA_RESOURCE(tag, MyDatabaseId, shardId);

 (void) LockAcquire(&tag, lockMode, sessionLock, dontWait);
}
