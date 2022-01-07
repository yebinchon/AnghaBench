
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int compute_cache; int compute_distance_ssd; } ;
typedef TYPE_1__ AudioNLMDNDSPContext ;


 scalar_t__ ARCH_X86 ;
 int compute_cache_c ;
 int compute_distance_ssd_c ;
 int ff_anlmdn_init_x86 (TYPE_1__*) ;

void ff_anlmdn_init(AudioNLMDNDSPContext *dsp)
{
    dsp->compute_distance_ssd = compute_distance_ssd_c;
    dsp->compute_cache = compute_cache_c;

    if (ARCH_X86)
        ff_anlmdn_init_x86(dsp);
}
