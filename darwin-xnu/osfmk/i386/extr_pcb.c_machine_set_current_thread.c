
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thread_t ;
struct TYPE_2__ {int cpu_active_thread; } ;


 TYPE_1__* current_cpu_datap () ;

void
machine_set_current_thread(thread_t thread)
{
 current_cpu_datap()->cpu_active_thread = thread;
}
