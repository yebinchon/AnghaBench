
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCCMPEntry ;


 int NBUCKETS ;
 int RADIX_PASSES ;
 int radix_count (int *,int,int**) ;
 int radix_sort_pass (int *,int *,int,int*,int) ;

__attribute__((used)) static void radix_sort(RCCMPEntry *data, RCCMPEntry *tmp, int size)
{
    int buckets[RADIX_PASSES][NBUCKETS];
    radix_count(data, size, buckets);
    radix_sort_pass(tmp, data, size, buckets[0], 0);
    radix_sort_pass(data, tmp, size, buckets[1], 1);
    if (buckets[2][NBUCKETS - 1] || buckets[3][NBUCKETS - 1]) {
        radix_sort_pass(tmp, data, size, buckets[2], 2);
        radix_sort_pass(data, tmp, size, buckets[3], 3);
    }
}
