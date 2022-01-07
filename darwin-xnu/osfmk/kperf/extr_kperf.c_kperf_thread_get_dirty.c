
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ c_switch; scalar_t__ kperf_c_switch; } ;



boolean_t
kperf_thread_get_dirty(thread_t thread)
{
 return (thread->c_switch != thread->kperf_c_switch);
}
