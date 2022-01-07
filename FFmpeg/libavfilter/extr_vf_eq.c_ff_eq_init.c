
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int process; } ;
typedef TYPE_1__ EQContext ;


 scalar_t__ ARCH_X86 ;
 int ff_eq_init_x86 (TYPE_1__*) ;
 int process_c ;

void ff_eq_init(EQContext *eq)
{
    eq->process = process_c;
    if (ARCH_X86)
        ff_eq_init_x86(eq);
}
