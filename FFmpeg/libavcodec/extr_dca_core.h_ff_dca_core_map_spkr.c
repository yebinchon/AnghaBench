
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int ch_mask; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int DCA_SPEAKER_Ls ;
 int DCA_SPEAKER_Lss ;
 int DCA_SPEAKER_MASK_Ls ;
 int DCA_SPEAKER_MASK_Rs ;
 int DCA_SPEAKER_Rs ;
 int DCA_SPEAKER_Rss ;

__attribute__((used)) static inline int ff_dca_core_map_spkr(DCACoreDecoder *core, int spkr)
{
    if (core->ch_mask & (1U << spkr))
        return spkr;
    if (spkr == DCA_SPEAKER_Lss && (core->ch_mask & DCA_SPEAKER_MASK_Ls))
        return DCA_SPEAKER_Ls;
    if (spkr == DCA_SPEAKER_Rss && (core->ch_mask & DCA_SPEAKER_MASK_Rs))
        return DCA_SPEAKER_Rs;
    return -1;
}
