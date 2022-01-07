
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SwsFunc ;
typedef int SwsContext ;


 scalar_t__ ARCH_AARCH64 ;
 scalar_t__ ARCH_ARM ;
 scalar_t__ ARCH_PPC ;
 scalar_t__ ARCH_X86 ;
 int ff_sws_init_swscale_aarch64 (int *) ;
 int ff_sws_init_swscale_arm (int *) ;
 int ff_sws_init_swscale_ppc (int *) ;
 int ff_sws_init_swscale_x86 (int *) ;
 int sws_init_swscale (int *) ;
 int swscale ;

SwsFunc ff_getSwsFunc(SwsContext *c)
{
    sws_init_swscale(c);

    if (ARCH_PPC)
        ff_sws_init_swscale_ppc(c);
    if (ARCH_X86)
        ff_sws_init_swscale_x86(c);
    if (ARCH_AARCH64)
        ff_sws_init_swscale_aarch64(c);
    if (ARCH_ARM)
        ff_sws_init_swscale_arm(c);

    return swscale;
}
