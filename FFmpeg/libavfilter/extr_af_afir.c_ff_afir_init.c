
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fcmul_add; } ;
typedef TYPE_1__ AudioFIRDSPContext ;


 scalar_t__ ARCH_X86 ;
 int fcmul_add_c ;
 int ff_afir_init_x86 (TYPE_1__*) ;

void ff_afir_init(AudioFIRDSPContext *dsp)
{
    dsp->fcmul_add = fcmul_add_c;

    if (ARCH_X86)
        ff_afir_init_x86(dsp);
}
