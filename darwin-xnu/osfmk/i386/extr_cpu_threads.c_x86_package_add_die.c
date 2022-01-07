
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_dies; TYPE_2__* dies; } ;
typedef TYPE_1__ x86_pkg_t ;
struct TYPE_6__ {TYPE_1__* package; struct TYPE_6__* next_in_pkg; } ;
typedef TYPE_2__ x86_die_t ;


 int assert (int ) ;

__attribute__((used)) static void
x86_package_add_die(x86_pkg_t *pkg, x86_die_t *die)
{
    assert(pkg != ((void*)0));
    assert(die != ((void*)0));

    die->next_in_pkg = pkg->dies;
    die->package = pkg;
    pkg->dies = die;
    pkg->num_dies += 1;
}
