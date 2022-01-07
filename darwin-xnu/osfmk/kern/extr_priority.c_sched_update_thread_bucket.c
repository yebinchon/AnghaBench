
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef size_t sched_bucket_t ;
struct TYPE_3__ {size_t th_sched_bucket; int sched_mode; int state; int pri_shift; int base_pri; } ;


 int BASEPRI_DEFAULT ;
 int BASEPRI_UTILITY ;
 int MAXPRI_THROTTLE ;
 size_t TH_BUCKET_FIXPRI ;
 size_t TH_BUCKET_RUN ;
 size_t TH_BUCKET_SHARE_BG ;
 size_t TH_BUCKET_SHARE_DF ;
 size_t TH_BUCKET_SHARE_FG ;
 size_t TH_BUCKET_SHARE_UT ;
 int TH_IDLE ;



 int TH_RUN ;
 int panic (char*,int) ;
 int sched_decr_bucket (size_t) ;
 int sched_incr_bucket (size_t) ;
 int * sched_pri_shifts ;

__attribute__((used)) static void
sched_update_thread_bucket(thread_t thread)
{
 sched_bucket_t old_bucket = thread->th_sched_bucket;
 sched_bucket_t new_bucket = TH_BUCKET_RUN;

 switch (thread->sched_mode) {
 case 130:
 case 129:
  new_bucket = TH_BUCKET_FIXPRI;
  break;

 case 128:
  if (thread->base_pri > BASEPRI_DEFAULT)
   new_bucket = TH_BUCKET_SHARE_FG;
  else if (thread->base_pri > BASEPRI_UTILITY)
   new_bucket = TH_BUCKET_SHARE_DF;
  else if (thread->base_pri > MAXPRI_THROTTLE)
   new_bucket = TH_BUCKET_SHARE_UT;
  else
   new_bucket = TH_BUCKET_SHARE_BG;
  break;

 default:
  panic("unexpected mode: %d", thread->sched_mode);
  break;
 }

 if (old_bucket != new_bucket) {
  thread->th_sched_bucket = new_bucket;
  thread->pri_shift = sched_pri_shifts[new_bucket];

  if ((thread->state & (TH_RUN|TH_IDLE)) == TH_RUN) {
   sched_decr_bucket(old_bucket);
   sched_incr_bucket(new_bucket);
  }
 }
}
