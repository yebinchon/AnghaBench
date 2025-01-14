
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ssim_4x4_line; int ssim_end_line; } ;
typedef TYPE_1__ SSIMDSPContext ;


 scalar_t__ ARCH_X86_64 ;
 scalar_t__ EXTERNAL_SSE4 (int) ;
 scalar_t__ EXTERNAL_SSSE3 (int) ;
 scalar_t__ EXTERNAL_XOP (int) ;
 int av_get_cpu_flags () ;
 int ff_ssim_4x4_line_ssse3 ;
 int ff_ssim_4x4_line_xop ;
 int ff_ssim_end_line_sse4 ;

void ff_ssim_init_x86(SSIMDSPContext *dsp)
{
    int cpu_flags = av_get_cpu_flags();

    if (ARCH_X86_64 && EXTERNAL_SSSE3(cpu_flags))
        dsp->ssim_4x4_line = ff_ssim_4x4_line_ssse3;
    if (EXTERNAL_SSE4(cpu_flags))
        dsp->ssim_end_line = ff_ssim_end_line_sse4;
    if (EXTERNAL_XOP(cpu_flags))
        dsp->ssim_4x4_line = ff_ssim_4x4_line_xop;
}
