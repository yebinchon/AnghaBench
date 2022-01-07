
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int add_gradient_pred; int add_left_pred; int add_bytes; int add_left_pred_int16; int add_median_pred; } ;
typedef TYPE_1__ LLVidDSPContext ;


 scalar_t__ ARCH_X86_32 ;
 int AV_CPU_FLAG_3DNOW ;
 int AV_CPU_FLAG_CMOV ;
 scalar_t__ EXTERNAL_AVX2_FAST (int) ;
 scalar_t__ EXTERNAL_MMX (int) ;
 scalar_t__ EXTERNAL_MMXEXT (int) ;
 scalar_t__ EXTERNAL_SSE2 (int) ;
 scalar_t__ EXTERNAL_SSSE3 (int) ;
 scalar_t__ EXTERNAL_SSSE3_FAST (int) ;
 int add_median_pred_cmov ;
 int av_get_cpu_flags () ;
 int ff_add_bytes_avx2 ;
 int ff_add_bytes_mmx ;
 int ff_add_bytes_sse2 ;
 int ff_add_gradient_pred_avx2 ;
 int ff_add_gradient_pred_ssse3 ;
 int ff_add_left_pred_int16_ssse3 ;
 int ff_add_left_pred_int16_unaligned_ssse3 ;
 int ff_add_left_pred_ssse3 ;
 int ff_add_left_pred_unaligned_avx2 ;
 int ff_add_left_pred_unaligned_ssse3 ;
 int ff_add_median_pred_mmxext ;
 int ff_add_median_pred_sse2 ;

void ff_llviddsp_init_x86(LLVidDSPContext *c)
{
    int cpu_flags = av_get_cpu_flags();






    if (ARCH_X86_32 && EXTERNAL_MMX(cpu_flags)) {
        c->add_bytes = ff_add_bytes_mmx;
    }

    if (ARCH_X86_32 && EXTERNAL_MMXEXT(cpu_flags)) {

        if (!(cpu_flags & AV_CPU_FLAG_3DNOW))
            c->add_median_pred = ff_add_median_pred_mmxext;
    }

    if (EXTERNAL_SSE2(cpu_flags)) {
        c->add_bytes = ff_add_bytes_sse2;
        c->add_median_pred = ff_add_median_pred_sse2;
    }

    if (EXTERNAL_SSSE3(cpu_flags)) {
        c->add_left_pred = ff_add_left_pred_ssse3;
        c->add_left_pred_int16 = ff_add_left_pred_int16_ssse3;
        c->add_gradient_pred = ff_add_gradient_pred_ssse3;
    }

    if (EXTERNAL_SSSE3_FAST(cpu_flags)) {
        c->add_left_pred = ff_add_left_pred_unaligned_ssse3;
        c->add_left_pred_int16 = ff_add_left_pred_int16_unaligned_ssse3;
    }

    if (EXTERNAL_AVX2_FAST(cpu_flags)) {
        c->add_bytes = ff_add_bytes_avx2;
        c->add_left_pred = ff_add_left_pred_unaligned_avx2;
        c->add_gradient_pred = ff_add_gradient_pred_avx2;
    }
}
