
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int limiter; } ;
typedef TYPE_1__ LimiterDSPContext ;


 scalar_t__ EXTERNAL_SSE2 (int) ;
 scalar_t__ EXTERNAL_SSE4 (int) ;
 int av_get_cpu_flags () ;
 int ff_limiter_16bit_sse4 ;
 int ff_limiter_8bit_sse2 ;

void ff_limiter_init_x86(LimiterDSPContext *dsp, int bpp)
{
    int cpu_flags = av_get_cpu_flags();

    if (EXTERNAL_SSE2(cpu_flags)) {
        if (bpp <= 8) {
            dsp->limiter = ff_limiter_8bit_sse2;
        }
    }
    if (EXTERNAL_SSE4(cpu_flags)) {
        if (bpp > 8) {
            dsp->limiter = ff_limiter_16bit_sse4;
        }
    }
}
