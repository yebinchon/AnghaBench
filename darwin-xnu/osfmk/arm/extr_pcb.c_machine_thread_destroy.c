
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
struct TYPE_7__ {int * cpu_user_debug; } ;
struct TYPE_5__ {int * DebugData; } ;
struct TYPE_6__ {TYPE_1__ machine; } ;


 int ads_zone ;
 int arm_debug_set (int *) ;
 TYPE_4__* getCpuDatap () ;
 int zfree (int ,int *) ;

void
machine_thread_destroy(
         thread_t thread)
{

        if (thread->machine.DebugData != ((void*)0)) {
  if (thread->machine.DebugData == getCpuDatap()->cpu_user_debug)
   arm_debug_set(((void*)0));
  zfree(ads_zone, thread->machine.DebugData);
 }
}
