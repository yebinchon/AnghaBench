
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cpu_num; int lnum; int ** caches; int state; int pnum; int * package; int * die; int * core; int * next_in_pkg; int * next_in_die; int * next_in_core; TYPE_2__* cpu; struct TYPE_4__* lcpu; } ;
typedef TYPE_1__ x86_lcpu_t ;
struct TYPE_5__ {int cpu_phys_number; TYPE_1__ lcpu; } ;
typedef TYPE_2__ cpu_data_t ;


 int LCPU_OFF ;
 int MAX_CACHE_DEPTH ;
 TYPE_2__* cpu_datap (int) ;

__attribute__((used)) static void
x86_lcpu_init(int cpu)
{
    cpu_data_t *cpup;
    x86_lcpu_t *lcpu;
    int i;

    cpup = cpu_datap(cpu);

    lcpu = &cpup->lcpu;
    lcpu->lcpu = lcpu;
    lcpu->cpu = cpup;
    lcpu->next_in_core = ((void*)0);
    lcpu->next_in_die = ((void*)0);
    lcpu->next_in_pkg = ((void*)0);
    lcpu->core = ((void*)0);
    lcpu->die = ((void*)0);
    lcpu->package = ((void*)0);
    lcpu->cpu_num = cpu;
    lcpu->lnum = cpu;
    lcpu->pnum = cpup->cpu_phys_number;
    lcpu->state = LCPU_OFF;
    for (i = 0; i < MAX_CACHE_DEPTH; i += 1)
 lcpu->caches[i] = ((void*)0);
}
