
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_CPU_FLAG_ALTIVEC ;
 int AV_CPU_FLAG_POWER8 ;
 int AV_CPU_FLAG_VSX ;
 int av_get_cpu_flags () ;

size_t ff_get_cpu_max_align_ppc(void)
{
    int flags = av_get_cpu_flags();

    if (flags & (AV_CPU_FLAG_ALTIVEC |
                 AV_CPU_FLAG_VSX |
                 AV_CPU_FLAG_POWER8))
        return 16;

    return 8;
}
