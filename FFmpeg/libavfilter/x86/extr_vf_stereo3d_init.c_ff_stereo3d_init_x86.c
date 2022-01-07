
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int anaglyph; } ;
typedef TYPE_1__ Stereo3DDSPContext ;


 scalar_t__ EXTERNAL_SSE4 (int) ;
 int av_get_cpu_flags () ;
 int ff_anaglyph_sse4 ;

void ff_stereo3d_init_x86(Stereo3DDSPContext *dsp)
{
    int cpu_flags = av_get_cpu_flags();

    if (EXTERNAL_SSE4(cpu_flags)) {
        dsp->anaglyph = ff_anaglyph_sse4;
    }
}
