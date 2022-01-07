
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* core; struct TYPE_5__* next_in_core; } ;
typedef TYPE_1__ x86_lcpu_t ;
struct TYPE_6__ {int num_lcpus; TYPE_1__* lcpus; } ;
typedef TYPE_2__ x86_core_t ;


 int assert (int ) ;
 int mp_safe_spin_lock (int *) ;
 int simple_unlock (int *) ;
 int x86_topo_lock ;

__attribute__((used)) static void
x86_core_add_lcpu(x86_core_t *core, x86_lcpu_t *lcpu)
{
    assert(core != ((void*)0));
    assert(lcpu != ((void*)0));

    mp_safe_spin_lock(&x86_topo_lock);

    lcpu->next_in_core = core->lcpus;
    lcpu->core = core;
    core->lcpus = lcpu;
    core->num_lcpus += 1;
    simple_unlock(&x86_topo_lock);
}
