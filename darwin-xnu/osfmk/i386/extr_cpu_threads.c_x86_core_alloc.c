
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int pcore_num; int lcore_num; int flags; struct TYPE_8__* next_in_die; } ;
typedef TYPE_1__ x86_core_t ;
struct TYPE_9__ {int cpu_phys_number; } ;
typedef TYPE_2__ cpu_data_t ;
struct TYPE_10__ {int nPThreadsPerCore; int nPCoresPerPackage; } ;


 int X86CORE_FL_HALTED ;
 int X86CORE_FL_IDLE ;
 int X86CORE_FL_PRESENT ;
 int X86CORE_FL_READY ;
 int bzero (void*,int) ;
 TYPE_2__* cpu_datap (int) ;
 TYPE_1__* free_cores ;
 TYPE_1__* kalloc (int) ;
 int mp_safe_spin_lock (int *) ;
 int panic (char*) ;
 int simple_unlock (int *) ;
 TYPE_4__ topoParms ;
 int x86_topo_lock ;

__attribute__((used)) static x86_core_t *
x86_core_alloc(int cpu)
{
    x86_core_t *core;
    cpu_data_t *cpup;

    cpup = cpu_datap(cpu);

    mp_safe_spin_lock(&x86_topo_lock);
    if (free_cores != ((void*)0)) {
 core = free_cores;
 free_cores = core->next_in_die;
 core->next_in_die = ((void*)0);
 simple_unlock(&x86_topo_lock);
    } else {
 simple_unlock(&x86_topo_lock);
 core = kalloc(sizeof(x86_core_t));
 if (core == ((void*)0))
     panic("x86_core_alloc() kalloc of x86_core_t failed!\n");
    }

    bzero((void *) core, sizeof(x86_core_t));

    core->pcore_num = cpup->cpu_phys_number / topoParms.nPThreadsPerCore;
    core->lcore_num = core->pcore_num % topoParms.nPCoresPerPackage;

    core->flags = X86CORE_FL_PRESENT | X86CORE_FL_READY
         | X86CORE_FL_HALTED | X86CORE_FL_IDLE;

    return(core);
}
