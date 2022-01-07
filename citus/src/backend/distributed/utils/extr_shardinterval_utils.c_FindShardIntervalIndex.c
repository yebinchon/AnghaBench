
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
struct TYPE_3__ {int shardIntervalArrayLength; char partitionMethod; int hasUniformHashDistribution; int * shardIntervalCompareFunction; int ** sortedShardIntervalArray; } ;
typedef int ShardInterval ;
typedef int FmgrInfo ;
typedef TYPE_1__ DistTableCacheEntry ;
typedef int Datum ;


 int Assert (int) ;
 char DISTRIBUTE_BY_HASH ;
 char DISTRIBUTE_BY_NONE ;
 int DatumGetInt32 (int ) ;
 int ERRCODE_DATA_EXCEPTION ;
 int ERROR ;
 int HASH_TOKEN_COUNT ;
 int INT32_MIN ;
 int INVALID_SHARD_INDEX ;
 int SearchCachedShardInterval (int ,int **,int,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;

int
FindShardIntervalIndex(Datum searchedValue, DistTableCacheEntry *cacheEntry)
{
 ShardInterval **shardIntervalCache = cacheEntry->sortedShardIntervalArray;
 int shardCount = cacheEntry->shardIntervalArrayLength;
 char partitionMethod = cacheEntry->partitionMethod;
 FmgrInfo *compareFunction = cacheEntry->shardIntervalCompareFunction;
 bool useBinarySearch = (partitionMethod != DISTRIBUTE_BY_HASH ||
       !cacheEntry->hasUniformHashDistribution);
 int shardIndex = INVALID_SHARD_INDEX;

 if (shardCount == 0)
 {
  return INVALID_SHARD_INDEX;
 }

 if (partitionMethod == DISTRIBUTE_BY_HASH)
 {
  if (useBinarySearch)
  {
   Assert(compareFunction != ((void*)0));

   shardIndex = SearchCachedShardInterval(searchedValue, shardIntervalCache,
               shardCount, compareFunction);


   if (shardIndex == INVALID_SHARD_INDEX)
   {
    ereport(ERROR, (errcode(ERRCODE_DATA_EXCEPTION),
        errmsg("cannot find shard interval"),
        errdetail("Hash of the partition column value "
            "does not fall into any shards.")));
   }
  }
  else
  {
   int hashedValue = DatumGetInt32(searchedValue);
   uint64 hashTokenIncrement = HASH_TOKEN_COUNT / shardCount;

   shardIndex = (uint32) (hashedValue - INT32_MIN) / hashTokenIncrement;
   Assert(shardIndex <= shardCount);






   if (shardIndex == shardCount)
   {
    shardIndex = shardCount - 1;
   }
  }
 }
 else if (partitionMethod == DISTRIBUTE_BY_NONE)
 {

  Assert(shardCount == 1);

  shardIndex = 0;
 }
 else
 {
  Assert(compareFunction != ((void*)0));

  shardIndex = SearchCachedShardInterval(searchedValue, shardIntervalCache,
              shardCount, compareFunction);
 }

 return shardIndex;
}
