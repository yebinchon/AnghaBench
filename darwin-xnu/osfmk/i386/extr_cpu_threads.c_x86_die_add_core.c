
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_cores; TYPE_2__* cores; } ;
typedef TYPE_1__ x86_die_t ;
struct TYPE_6__ {TYPE_1__* die; struct TYPE_6__* next_in_die; } ;
typedef TYPE_2__ x86_core_t ;


 int assert (int ) ;

__attribute__((used)) static void
x86_die_add_core(x86_die_t *die, x86_core_t *core)
{
    assert(die != ((void*)0));
    assert(core != ((void*)0));

    core->next_in_die = die->cores;
    core->die = die;
    die->cores = core;
    die->num_cores += 1;
}
