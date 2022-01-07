
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int scalarproduct_fixed; int butterflies_fixed; int vector_fmul_reverse; int vector_fmul_add; int vector_fmul; int vector_fmul_window; int vector_fmul_window_scaled; } ;
typedef TYPE_1__ AVFixedDSPContext ;


 scalar_t__ ARCH_X86 ;
 TYPE_1__* av_malloc (int) ;
 int butterflies_fixed_c ;
 int ff_fixed_dsp_init_x86 (TYPE_1__*) ;
 int scalarproduct_fixed_c ;
 int vector_fmul_add_c ;
 int vector_fmul_c ;
 int vector_fmul_reverse_c ;
 int vector_fmul_window_c ;
 int vector_fmul_window_scaled_c ;

AVFixedDSPContext * avpriv_alloc_fixed_dsp(int bit_exact)
{
    AVFixedDSPContext * fdsp = av_malloc(sizeof(AVFixedDSPContext));

    if (!fdsp)
        return ((void*)0);

    fdsp->vector_fmul_window_scaled = vector_fmul_window_scaled_c;
    fdsp->vector_fmul_window = vector_fmul_window_c;
    fdsp->vector_fmul = vector_fmul_c;
    fdsp->vector_fmul_add = vector_fmul_add_c;
    fdsp->vector_fmul_reverse = vector_fmul_reverse_c;
    fdsp->butterflies_fixed = butterflies_fixed_c;
    fdsp->scalarproduct_fixed = scalarproduct_fixed_c;

    if (ARCH_X86)
        ff_fixed_dsp_init_x86(fdsp);

    return fdsp;
}
