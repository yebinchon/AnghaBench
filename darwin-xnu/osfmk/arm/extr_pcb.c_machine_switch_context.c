
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_3__* thread_t ;
typedef int thread_continue_t ;
typedef int cpu_data_t ;
struct TYPE_15__ {int * CpuDatap; } ;
struct TYPE_16__ {TYPE_2__ machine; TYPE_1__* map; } ;
struct TYPE_14__ {int pmap; } ;


 TYPE_3__* Switch_context (TYPE_3__*,int ,TYPE_3__*) ;
 int assert (int ) ;
 int * getCpuDatap () ;
 int kpc_off_cpu (TYPE_3__*) ;
 int machine_switch_context_kprintf (char*,TYPE_3__*,int ,TYPE_3__*) ;
 int panic (char*) ;
 int pmap_set_pmap (int ,TYPE_3__*) ;

thread_t
machine_switch_context(
         thread_t old,
         thread_continue_t continuation,
         thread_t new)
{
 thread_t retval;
 cpu_data_t *cpu_data_ptr;




 cpu_data_ptr = getCpuDatap();
 if (old == new)
  panic("machine_switch_context");

 kpc_off_cpu(old);

 pmap_set_pmap(new->map->pmap, new);

 new->machine.CpuDatap = cpu_data_ptr;

                                                                                              ;
 retval = Switch_context(old, continuation, new);
 assert(retval != ((void*)0));

 return retval;
}
