
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int compute_safe_ssd_integral_image; } ;
typedef TYPE_1__ NLMeansDSPContext ;


 scalar_t__ ARCH_AARCH64 ;
 int compute_safe_ssd_integral_image_c ;
 int ff_nlmeans_init_aarch64 (TYPE_1__*) ;

void ff_nlmeans_init(NLMeansDSPContext *dsp)
{
    dsp->compute_safe_ssd_integral_image = compute_safe_ssd_integral_image_c;

    if (ARCH_AARCH64)
        ff_nlmeans_init_aarch64(dsp);
}
