
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int microseconds; int seconds; } ;
struct TYPE_12__ {int microseconds; int seconds; } ;
struct TYPE_16__ {TYPE_4__ system_time; TYPE_3__ user_time; } ;
typedef TYPE_7__ task_thread_times_info_data_t ;
typedef scalar_t__ task_t ;
typedef int task_info_t ;
struct TYPE_17__ {scalar_t__ csw; scalar_t__ pageins; scalar_t__ faults; } ;
typedef TYPE_8__ task_events_info_data_t ;
struct timeval {int tv_usec; int tv_sec; } ;
struct proc {TYPE_6__* p_stats; scalar_t__ task; } ;
struct TYPE_11__ {int microseconds; int seconds; } ;
struct TYPE_10__ {int microseconds; int seconds; } ;
struct TYPE_18__ {int resident_size_max; TYPE_2__ system_time; TYPE_1__ user_time; } ;
typedef TYPE_9__ mach_task_basic_info_data_t ;
typedef int mach_msg_type_number_t ;
struct TYPE_14__ {scalar_t__ ru_nivcsw; scalar_t__ ru_nvcsw; int ru_maxrss; scalar_t__ ru_majflt; scalar_t__ ru_minflt; } ;
struct TYPE_15__ {TYPE_5__ p_ru; } ;


 int MACH_TASK_BASIC_INFO ;
 int MACH_TASK_BASIC_INFO_COUNT ;
 int TASK_EVENTS_INFO ;
 int TASK_EVENTS_INFO_COUNT ;
 int TASK_THREAD_TIMES_INFO ;
 int TASK_THREAD_TIMES_INFO_COUNT ;
 int task_info (scalar_t__,int ,int ,int *) ;
 int timeradd (struct timeval*,struct timeval*,struct timeval*) ;
 int timerclear (struct timeval*) ;

void
calcru(struct proc *p, struct timeval *up, struct timeval *sp, struct timeval *ip)
{
 task_t task;

 timerclear(up);
 timerclear(sp);
 if (ip != ((void*)0))
  timerclear(ip);

 task = p->task;
 if (task) {
  mach_task_basic_info_data_t tinfo;
  task_thread_times_info_data_t ttimesinfo;
  task_events_info_data_t teventsinfo;
  mach_msg_type_number_t task_info_count, task_ttimes_count;
  mach_msg_type_number_t task_events_count;
  struct timeval ut,st;

  task_info_count = MACH_TASK_BASIC_INFO_COUNT;
  task_info(task, MACH_TASK_BASIC_INFO,
     (task_info_t)&tinfo, &task_info_count);
  ut.tv_sec = tinfo.user_time.seconds;
  ut.tv_usec = tinfo.user_time.microseconds;
  st.tv_sec = tinfo.system_time.seconds;
  st.tv_usec = tinfo.system_time.microseconds;
  timeradd(&ut, up, up);
  timeradd(&st, sp, sp);

  task_ttimes_count = TASK_THREAD_TIMES_INFO_COUNT;
  task_info(task, TASK_THREAD_TIMES_INFO,
     (task_info_t)&ttimesinfo, &task_ttimes_count);

  ut.tv_sec = ttimesinfo.user_time.seconds;
  ut.tv_usec = ttimesinfo.user_time.microseconds;
  st.tv_sec = ttimesinfo.system_time.seconds;
  st.tv_usec = ttimesinfo.system_time.microseconds;
  timeradd(&ut, up, up);
  timeradd(&st, sp, sp);

  task_events_count = TASK_EVENTS_INFO_COUNT;
  task_info(task, TASK_EVENTS_INFO,
     (task_info_t)&teventsinfo, &task_events_count);





  p->p_stats->p_ru.ru_minflt = (teventsinfo.faults -
           teventsinfo.pageins);
  p->p_stats->p_ru.ru_majflt = teventsinfo.pageins;
  p->p_stats->p_ru.ru_nivcsw = (teventsinfo.csw -
           p->p_stats->p_ru.ru_nvcsw);
  if (p->p_stats->p_ru.ru_nivcsw < 0)
   p->p_stats->p_ru.ru_nivcsw = 0;

  p->p_stats->p_ru.ru_maxrss = tinfo.resident_size_max;
 }
}
