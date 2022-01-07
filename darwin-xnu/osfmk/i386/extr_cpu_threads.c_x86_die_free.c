
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next_in_pkg; } ;
typedef TYPE_1__ x86_die_t ;


 int atomic_decl (long*,int) ;
 TYPE_1__* free_dies ;
 int mp_safe_spin_lock (int *) ;
 int num_dies ;
 int simple_unlock (int *) ;
 int x86_topo_lock ;

__attribute__((used)) static void
x86_die_free(x86_die_t *die)
{
    mp_safe_spin_lock(&x86_topo_lock);
    die->next_in_pkg = free_dies;
    free_dies = die;
    atomic_decl((long *) &num_dies, 1);
    simple_unlock(&x86_topo_lock);
}
