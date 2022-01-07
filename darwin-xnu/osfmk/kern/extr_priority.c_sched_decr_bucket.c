
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t sched_bucket_t ;


 size_t TH_BUCKET_FIXPRI ;
 size_t TH_BUCKET_SHARE_BG ;
 int assert (int) ;
 int hw_atomic_sub (scalar_t__*,int) ;
 scalar_t__* sched_run_buckets ;

__attribute__((used)) static void
sched_decr_bucket(sched_bucket_t bucket)
{
 assert(bucket >= TH_BUCKET_FIXPRI &&
        bucket <= TH_BUCKET_SHARE_BG);

 assert(sched_run_buckets[bucket] > 0);

 hw_atomic_sub(&sched_run_buckets[bucket], 1);
}
