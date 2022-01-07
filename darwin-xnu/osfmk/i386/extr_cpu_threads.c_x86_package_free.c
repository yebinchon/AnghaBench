
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ x86_pkg_t ;
struct TYPE_6__ {int nPackages; } ;


 int atomic_decl (long*,int) ;
 TYPE_1__* free_pkgs ;
 int mp_safe_spin_lock (int *) ;
 int simple_unlock (int *) ;
 TYPE_3__ topoParms ;
 int x86_topo_lock ;

__attribute__((used)) static void
x86_package_free(x86_pkg_t *pkg)
{
    mp_safe_spin_lock(&x86_topo_lock);
    pkg->next = free_pkgs;
    free_pkgs = pkg;
    atomic_decl((long *) &topoParms.nPackages, 1);
    simple_unlock(&x86_topo_lock);
}
