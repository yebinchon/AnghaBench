
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_3__ {scalar_t__ last_run_time; scalar_t__ last_made_runnable_time; } ;



uint64_t
thread_get_last_wait_duration(thread_t thread)
{
 return thread->last_made_runnable_time - thread->last_run_time;
}
