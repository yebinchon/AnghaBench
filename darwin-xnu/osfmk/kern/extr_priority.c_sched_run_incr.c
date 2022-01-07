
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_3__ {int state; int th_sched_bucket; } ;


 size_t TH_BUCKET_RUN ;
 int TH_IDLE ;
 int TH_RUN ;
 int assert (int) ;
 int hw_atomic_add (int *,int) ;
 int sched_incr_bucket (int ) ;
 int * sched_run_buckets ;

uint32_t
sched_run_incr(thread_t thread)
{
 assert((thread->state & (TH_RUN|TH_IDLE)) == TH_RUN);

 uint32_t new_count = hw_atomic_add(&sched_run_buckets[TH_BUCKET_RUN], 1);

 sched_incr_bucket(thread->th_sched_bucket);

 return new_count;
}
