
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* cores; } ;
typedef TYPE_1__ x86_die_t ;
struct TYPE_9__ {int pcore_num; struct TYPE_9__* next_in_die; } ;
typedef TYPE_2__ x86_core_t ;
typedef int uint32_t ;
struct TYPE_10__ {int cpu_phys_number; } ;
typedef TYPE_3__ cpu_data_t ;
struct TYPE_11__ {int nPThreadsPerCore; } ;


 TYPE_3__* cpu_datap (int) ;
 TYPE_6__ topoParms ;
 TYPE_1__* x86_die_find (int) ;

__attribute__((used)) static x86_core_t *
x86_core_find(int cpu)
{
    x86_core_t *core;
    x86_die_t *die;
    cpu_data_t *cpup;
    uint32_t core_num;

    cpup = cpu_datap(cpu);

    core_num = cpup->cpu_phys_number / topoParms.nPThreadsPerCore;

    die = x86_die_find(cpu);
    if (die == ((void*)0))
 return(((void*)0));

    core = die->cores;
    while (core != ((void*)0)) {
 if (core->pcore_num == core_num)
     break;
 core = core->next_in_die;
    }

    return(core);
}
