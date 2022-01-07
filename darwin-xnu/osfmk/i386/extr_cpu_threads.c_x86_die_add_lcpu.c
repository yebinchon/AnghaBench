
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* die; struct TYPE_5__* next_in_die; } ;
typedef TYPE_1__ x86_lcpu_t ;
struct TYPE_6__ {TYPE_1__* lcpus; } ;
typedef TYPE_2__ x86_die_t ;


 int assert (int ) ;

__attribute__((used)) static void
x86_die_add_lcpu(x86_die_t *die, x86_lcpu_t *lcpu)
{
    assert(die != ((void*)0));
    assert(lcpu != ((void*)0));

    lcpu->next_in_die = die->lcpus;
    lcpu->die = die;
    die->lcpus = lcpu;
}
