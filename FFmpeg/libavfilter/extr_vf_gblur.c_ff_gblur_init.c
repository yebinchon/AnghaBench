
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int horiz_slice; } ;
typedef TYPE_1__ GBlurContext ;


 scalar_t__ ARCH_X86_64 ;
 int ff_gblur_init_x86 (TYPE_1__*) ;
 int horiz_slice_c ;

void ff_gblur_init(GBlurContext *s)
{
    s->horiz_slice = horiz_slice_c;
    if (ARCH_X86_64)
        ff_gblur_init_x86(s);
}
