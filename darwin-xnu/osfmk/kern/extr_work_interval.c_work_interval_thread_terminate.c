
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_4__ {int * th_work_interval; } ;


 int thread_set_work_interval (TYPE_1__*,int *) ;

void
work_interval_thread_terminate(thread_t thread)
{
 if (thread->th_work_interval != ((void*)0))
  thread_set_work_interval(thread, ((void*)0));
}
