
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_CPU_FLAG_AESNI ;
 int AV_CPU_FLAG_ATOM ;
 int AV_CPU_FLAG_AVX ;
 int AV_CPU_FLAG_AVX2 ;
 int AV_CPU_FLAG_AVX512 ;
 int AV_CPU_FLAG_AVXSLOW ;
 int AV_CPU_FLAG_FMA3 ;
 int AV_CPU_FLAG_FMA4 ;
 int AV_CPU_FLAG_SSE ;
 int AV_CPU_FLAG_SSE2 ;
 int AV_CPU_FLAG_SSE2SLOW ;
 int AV_CPU_FLAG_SSE3 ;
 int AV_CPU_FLAG_SSE3SLOW ;
 int AV_CPU_FLAG_SSE4 ;
 int AV_CPU_FLAG_SSE42 ;
 int AV_CPU_FLAG_SSSE3 ;
 int AV_CPU_FLAG_SSSE3SLOW ;
 int AV_CPU_FLAG_XOP ;
 int av_get_cpu_flags () ;

size_t ff_get_cpu_max_align_x86(void)
{
    int flags = av_get_cpu_flags();

    if (flags & AV_CPU_FLAG_AVX512)
        return 64;
    if (flags & (AV_CPU_FLAG_AVX2 |
                 AV_CPU_FLAG_AVX |
                 AV_CPU_FLAG_XOP |
                 AV_CPU_FLAG_FMA4 |
                 AV_CPU_FLAG_FMA3 |
                 AV_CPU_FLAG_AVXSLOW))
        return 32;
    if (flags & (AV_CPU_FLAG_AESNI |
                 AV_CPU_FLAG_SSE42 |
                 AV_CPU_FLAG_SSE4 |
                 AV_CPU_FLAG_SSSE3 |
                 AV_CPU_FLAG_SSE3 |
                 AV_CPU_FLAG_SSE2 |
                 AV_CPU_FLAG_SSE |
                 AV_CPU_FLAG_ATOM |
                 AV_CPU_FLAG_SSSE3SLOW |
                 AV_CPU_FLAG_SSE3SLOW |
                 AV_CPU_FLAG_SSE2SLOW))
        return 16;

    return 8;
}
