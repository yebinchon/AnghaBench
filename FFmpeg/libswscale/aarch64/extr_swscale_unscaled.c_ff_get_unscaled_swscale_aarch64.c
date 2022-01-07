
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SwsContext ;


 int av_get_cpu_flags () ;
 int get_unscaled_swscale_neon (int *) ;
 scalar_t__ have_neon (int) ;

void ff_get_unscaled_swscale_aarch64(SwsContext *c)
{
    int cpu_flags = av_get_cpu_flags();
    if (have_neon(cpu_flags))
        get_unscaled_swscale_neon(c);
}
