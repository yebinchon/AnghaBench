
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct work_interval {int dummy; } ;
struct TYPE_4__ {struct work_interval* th_work_interval; } ;


 int assert (int) ;
 TYPE_1__* current_thread () ;
 int wi_release (struct work_interval*) ;

__attribute__((used)) static void
thread_set_work_interval(thread_t thread,
                         struct work_interval *work_interval)
{
 assert(thread == current_thread());

 struct work_interval *old_th_wi = thread->th_work_interval;


 thread->th_work_interval = work_interval;


 if (old_th_wi != ((void*)0))
  wi_release(old_th_wi);
}
