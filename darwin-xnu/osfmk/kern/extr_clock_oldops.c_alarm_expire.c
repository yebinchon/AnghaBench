
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int spl_t ;
typedef void* mach_timespec_t ;
typedef int event_t ;
typedef TYPE_2__* clock_t ;
typedef TYPE_3__* alarm_t ;
struct TYPE_8__ {void* al_time; scalar_t__ al_status; struct TYPE_8__* al_prev; struct TYPE_8__* al_next; } ;
struct TYPE_7__ {TYPE_1__* cl_ops; } ;
struct TYPE_6__ {int (* c_gettime ) (void**) ;} ;


 scalar_t__ ALARM_CLOCK ;
 void* ALARM_DONE ;
 scalar_t__ ALARM_SLEEP ;
 scalar_t__ CMP_MACH_TIMESPEC (void**,void**) ;
 int LOCK_ALARM (int ) ;
 size_t SYSTEM_CLOCK ;
 int UNLOCK_ALARM (int ) ;
 int alarm_done_call ;
 TYPE_3__* alrmdone ;
 int alrmlist ;
 int assert (int) ;
 TYPE_2__* clock_list ;
 int set_alarm (void**) ;
 int stub1 (void**) ;
 int thread_call_enter (int *) ;
 int thread_wakeup (int ) ;

__attribute__((used)) static void
alarm_expire(void)
{
 clock_t clock;
 alarm_t alrm1;
 alarm_t alrm2;
 mach_timespec_t clock_time;
 mach_timespec_t *alarm_time;
 spl_t s;

 clock = &clock_list[SYSTEM_CLOCK];
 (*clock->cl_ops->c_gettime)(&clock_time);





 LOCK_ALARM(s);
 alrm1 = (alarm_t)&alrmlist;
 while ((alrm2 = alrm1->al_next) != ((void*)0)) {
  alarm_time = &alrm2->al_time;
  if (CMP_MACH_TIMESPEC(alarm_time, &clock_time) > 0)
   break;





  if ((alrm1->al_next = alrm2->al_next) != ((void*)0))
   (alrm1->al_next)->al_prev = alrm1;





  if (alrm2->al_status == ALARM_SLEEP) {
   alrm2->al_next = ((void*)0);
   alrm2->al_status = ALARM_DONE;
   alrm2->al_time = clock_time;
   thread_wakeup((event_t)alrm2);
  }






  else {
   assert(alrm2->al_status == ALARM_CLOCK);
   if ((alrm2->al_next = alrmdone) != ((void*)0))
    alrmdone->al_prev = alrm2;
   else
    thread_call_enter(&alarm_done_call);
   alrm2->al_prev = (alarm_t)&alrmdone;
   alrmdone = alrm2;
   alrm2->al_status = ALARM_DONE;
   alrm2->al_time = clock_time;
  }
 }




 if (alrm2)
  set_alarm(alarm_time);
 UNLOCK_ALARM(s);
}
