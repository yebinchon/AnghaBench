
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int av_pixelutils_sad_fn ;


 scalar_t__ EXTERNAL_AVX2_FAST (int) ;
 scalar_t__ EXTERNAL_MMX (int) ;
 scalar_t__ EXTERNAL_MMXEXT (int) ;
 scalar_t__ EXTERNAL_SSE2 (int) ;
 int av_get_cpu_flags () ;
 int ff_pixelutils_sad_16x16_mmxext ;
 int ff_pixelutils_sad_16x16_sse2 ;
 int ff_pixelutils_sad_32x32_avx2 ;
 int ff_pixelutils_sad_32x32_sse2 ;
 int ff_pixelutils_sad_8x8_mmx ;
 int ff_pixelutils_sad_8x8_mmxext ;
 int ff_pixelutils_sad_a_16x16_sse2 ;
 int ff_pixelutils_sad_a_32x32_avx2 ;
 int ff_pixelutils_sad_a_32x32_sse2 ;
 int ff_pixelutils_sad_u_16x16_sse2 ;
 int ff_pixelutils_sad_u_32x32_avx2 ;
 int ff_pixelutils_sad_u_32x32_sse2 ;

void ff_pixelutils_sad_init_x86(av_pixelutils_sad_fn *sad, int aligned)
{
    int cpu_flags = av_get_cpu_flags();

    if (EXTERNAL_MMX(cpu_flags)) {
        sad[2] = ff_pixelutils_sad_8x8_mmx;
    }







    if (EXTERNAL_MMXEXT(cpu_flags)) {
        sad[2] = ff_pixelutils_sad_8x8_mmxext;
        sad[3] = ff_pixelutils_sad_16x16_mmxext;
    }

    if (EXTERNAL_SSE2(cpu_flags)) {
        switch (aligned) {
        case 0: sad[3] = ff_pixelutils_sad_16x16_sse2; break;
        case 1: sad[3] = ff_pixelutils_sad_u_16x16_sse2; break;
        case 2: sad[3] = ff_pixelutils_sad_a_16x16_sse2; break;
        }
    }

    if (EXTERNAL_SSE2(cpu_flags)) {
        switch (aligned) {
        case 0: sad[4] = ff_pixelutils_sad_32x32_sse2; break;
        case 1: sad[4] = ff_pixelutils_sad_u_32x32_sse2; break;
        case 2: sad[4] = ff_pixelutils_sad_a_32x32_sse2; break;
        }
    }

    if (EXTERNAL_AVX2_FAST(cpu_flags)) {
        switch (aligned) {
        case 0: sad[4] = ff_pixelutils_sad_32x32_avx2; break;
        case 1: sad[4] = ff_pixelutils_sad_u_32x32_avx2; break;
        case 2: sad[4] = ff_pixelutils_sad_a_32x32_avx2; break;
        }
    }
}
