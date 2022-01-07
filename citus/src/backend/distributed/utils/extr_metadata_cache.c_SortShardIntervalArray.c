
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qsort_arg_comparator ;
typedef int ShardInterval ;
typedef int FmgrInfo ;


 scalar_t__ CompareShardIntervals ;
 int qsort_arg (int **,int,int,int ,void*) ;

__attribute__((used)) static ShardInterval **
SortShardIntervalArray(ShardInterval **shardIntervalArray, int shardCount,
        FmgrInfo *shardIntervalSortCompareFunction)
{

 if (shardCount == 0)
 {
  return shardIntervalArray;
 }


 qsort_arg(shardIntervalArray, shardCount, sizeof(ShardInterval *),
     (qsort_arg_comparator) CompareShardIntervals,
     (void *) shardIntervalSortCompareFunction);

 return shardIntervalArray;
}
