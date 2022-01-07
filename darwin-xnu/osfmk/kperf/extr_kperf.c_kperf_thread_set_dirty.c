
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {scalar_t__ c_switch; scalar_t__ kperf_c_switch; } ;



void
kperf_thread_set_dirty(thread_t thread, boolean_t dirty)
{
 if (dirty) {
  thread->kperf_c_switch = thread->c_switch - 1;
 } else {
  thread->kperf_c_switch = thread->c_switch;
 }
}
