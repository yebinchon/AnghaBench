
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bitdepth; int blend; } ;
typedef TYPE_1__ FrameRateContext ;


 scalar_t__ EXTERNAL_AVX2_FAST (int) ;
 scalar_t__ EXTERNAL_SSE4 (int) ;
 scalar_t__ EXTERNAL_SSSE3 (int) ;
 int av_get_cpu_flags () ;
 int ff_blend_frames16_avx2 ;
 int ff_blend_frames16_sse4 ;
 int ff_blend_frames_avx2 ;
 int ff_blend_frames_ssse3 ;

void ff_framerate_init_x86(FrameRateContext *s)
{
    int cpu_flags = av_get_cpu_flags();
    if (s->bitdepth == 8) {
        if (EXTERNAL_AVX2_FAST(cpu_flags))
            s->blend = ff_blend_frames_avx2;
        else if (EXTERNAL_SSSE3(cpu_flags))
            s->blend = ff_blend_frames_ssse3;
    } else {
        if (EXTERNAL_AVX2_FAST(cpu_flags))
            s->blend = ff_blend_frames16_avx2;
        else if (EXTERNAL_SSE4(cpu_flags))
            s->blend = ff_blend_frames16_sse4;
    }
}
