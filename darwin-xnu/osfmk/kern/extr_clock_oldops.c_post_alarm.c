
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mach_timespec_t ;
typedef TYPE_1__* alarm_t ;
struct TYPE_4__ {struct TYPE_4__* al_prev; struct TYPE_4__* al_next; int al_time; } ;


 scalar_t__ CMP_MACH_TIMESPEC (int *,int *) ;
 TYPE_1__* alrmlist ;
 int set_alarm (int *) ;

__attribute__((used)) static void
post_alarm(
 alarm_t alarm)
{
 alarm_t alrm1, alrm2;
 mach_timespec_t *alarm_time;
 mach_timespec_t *queue_time;





 alarm_time = &alarm->al_time;
 alrm1 = (alarm_t)&alrmlist;
 while ((alrm2 = alrm1->al_next) != ((void*)0)) {
  queue_time = &alrm2->al_time;
  if (CMP_MACH_TIMESPEC(queue_time, alarm_time) > 0)
   break;
  alrm1 = alrm2;
 }
 alrm1->al_next = alarm;
 alarm->al_next = alrm2;
 alarm->al_prev = alrm1;
 if (alrm2)
  alrm2->al_prev = alarm;





 if (alrmlist == alarm)
  set_alarm(alarm_time);
}
