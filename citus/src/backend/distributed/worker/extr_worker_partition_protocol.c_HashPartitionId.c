
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef scalar_t__ int32 ;
struct TYPE_2__ {int partitionCount; scalar_t__ hasUniformHashDistribution; int collation; int * comparisonFunction; int ** syntheticShardIntervalArray; int * hashFunction; } ;
typedef int ShardInterval ;
typedef TYPE_1__ HashPartitionContext ;
typedef int FmgrInfo ;
typedef scalar_t__ Datum ;


 scalar_t__ DatumGetInt32 (scalar_t__) ;
 scalar_t__ FunctionCall1Coll (int *,int ,scalar_t__) ;
 int HASH_TOKEN_COUNT ;
 scalar_t__ INT32_MIN ;
 int SearchCachedShardInterval (scalar_t__,int **,int,int *) ;

__attribute__((used)) static uint32
HashPartitionId(Datum partitionValue, const void *context)
{
 HashPartitionContext *hashPartitionContext = (HashPartitionContext *) context;
 FmgrInfo *hashFunction = hashPartitionContext->hashFunction;
 uint32 partitionCount = hashPartitionContext->partitionCount;
 ShardInterval **syntheticShardIntervalArray =
  hashPartitionContext->syntheticShardIntervalArray;
 FmgrInfo *comparisonFunction = hashPartitionContext->comparisonFunction;
 Datum hashDatum = FunctionCall1Coll(hashFunction, hashPartitionContext->collation,
          partitionValue);
 int32 hashResult = 0;
 uint32 hashPartitionId = 0;

 if (hashDatum == 0)
 {
  return hashPartitionId;
 }

 if (hashPartitionContext->hasUniformHashDistribution)
 {
  uint64 hashTokenIncrement = HASH_TOKEN_COUNT / partitionCount;

  hashResult = DatumGetInt32(hashDatum);
  hashPartitionId = (uint32) (hashResult - INT32_MIN) / hashTokenIncrement;
 }
 else
 {
  hashPartitionId =
   SearchCachedShardInterval(hashDatum, syntheticShardIntervalArray,
           partitionCount, comparisonFunction);
 }


 return hashPartitionId;
}
