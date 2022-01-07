
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_3__* thread_t ;
typedef int thread_continue_t ;
typedef scalar_t__ pmap_t ;
typedef int cpu_data_t ;
struct TYPE_14__ {int * CpuDatap; } ;
struct TYPE_15__ {TYPE_2__ machine; TYPE_1__* map; } ;
struct TYPE_13__ {scalar_t__ pmap; } ;


 TYPE_3__* Switch_context (TYPE_3__*,int ,TYPE_3__*) ;
 int assert (int ) ;
 int * getCpuDatap () ;
 int kpc_off_cpu (TYPE_3__*) ;
 int machine_switch_context_kprintf (char*,TYPE_3__*,int ,TYPE_3__*) ;
 int panic (char*) ;
 int pmap_switch (scalar_t__) ;

thread_t
machine_switch_context(
         thread_t old,
         thread_continue_t continuation,
         thread_t new)
{
 thread_t retval;
 pmap_t new_pmap;
 cpu_data_t *cpu_data_ptr;




 cpu_data_ptr = getCpuDatap();
 if (old == new)
  panic("machine_switch_context");

 kpc_off_cpu(old);


 new_pmap = new->map->pmap;
 if (old->map->pmap != new_pmap)
  pmap_switch(new_pmap);

 new->machine.CpuDatap = cpu_data_ptr;

                                                                                              ;

 retval = Switch_context(old, continuation, new);
 assert(retval != ((void*)0));

 return retval;
}
