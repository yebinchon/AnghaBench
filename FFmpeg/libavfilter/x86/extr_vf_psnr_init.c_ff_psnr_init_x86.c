
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sse_line; } ;
typedef TYPE_1__ PSNRDSPContext ;


 scalar_t__ EXTERNAL_SSE2 (int) ;
 int av_get_cpu_flags () ;
 int ff_sse_line_16bit_sse2 ;
 int ff_sse_line_8bit_sse2 ;

void ff_psnr_init_x86(PSNRDSPContext *dsp, int bpp)
{
    int cpu_flags = av_get_cpu_flags();

    if (EXTERNAL_SSE2(cpu_flags)) {
        if (bpp <= 8) {
            dsp->sse_line = ff_sse_line_8bit_sse2;
        } else if (bpp <= 15) {
            dsp->sse_line = ff_sse_line_16bit_sse2;
        }
    }
}
