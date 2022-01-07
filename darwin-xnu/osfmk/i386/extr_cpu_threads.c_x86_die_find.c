
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* dies; } ;
typedef TYPE_1__ x86_pkg_t ;
struct TYPE_9__ {int pdie_num; struct TYPE_9__* next_in_pkg; } ;
typedef TYPE_2__ x86_die_t ;
typedef int uint32_t ;
struct TYPE_10__ {int cpu_phys_number; } ;
typedef TYPE_3__ cpu_data_t ;
struct TYPE_11__ {int nPThreadsPerDie; } ;


 TYPE_3__* cpu_datap (int) ;
 TYPE_6__ topoParms ;
 TYPE_1__* x86_package_find (int) ;

__attribute__((used)) static x86_die_t *
x86_die_find(int cpu)
{
    x86_die_t *die;
    x86_pkg_t *pkg;
    cpu_data_t *cpup;
    uint32_t die_num;

    cpup = cpu_datap(cpu);

    die_num = cpup->cpu_phys_number / topoParms.nPThreadsPerDie;

    pkg = x86_package_find(cpu);
    if (pkg == ((void*)0))
 return(((void*)0));

    die = pkg->dies;
    while (die != ((void*)0)) {
 if (die->pdie_num == die_num)
     break;
 die = die->next_in_pkg;
    }

    return(die);
}
