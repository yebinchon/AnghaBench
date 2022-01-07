
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_map_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_4__ {int map; } ;


 int PMAP_SWITCH_USER (TYPE_1__*,int ,int) ;
 int cpu_number () ;
 TYPE_1__* current_thread () ;
 int mp_disable_preemption () ;
 int mp_enable_preemption () ;

vm_map_t
vm_map_switch(
 vm_map_t map)
{
 int mycpu;
 thread_t thread = current_thread();
 vm_map_t oldmap = thread->map;

 mp_disable_preemption();
 mycpu = cpu_number();




 PMAP_SWITCH_USER(thread, map, mycpu);

 mp_enable_preemption();
 return(oldmap);
}
