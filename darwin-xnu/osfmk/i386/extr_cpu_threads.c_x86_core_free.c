
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next_in_die; } ;
typedef TYPE_1__ x86_core_t ;


 TYPE_1__* free_cores ;
 int mp_safe_spin_lock (int *) ;
 int simple_unlock (int *) ;
 int x86_topo_lock ;

__attribute__((used)) static void
x86_core_free(x86_core_t *core)
{
    mp_safe_spin_lock(&x86_topo_lock);
    core->next_in_die = free_cores;
    free_cores = core;
    simple_unlock(&x86_topo_lock);
}
