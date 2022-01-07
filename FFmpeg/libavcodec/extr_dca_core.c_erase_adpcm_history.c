
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__** subband_samples; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int AV_ZERO128 (scalar_t__) ;
 scalar_t__ DCA_ADPCM_COEFFS ;
 int DCA_CHANNELS ;
 int DCA_SUBBANDS ;
 int emms_c () ;

__attribute__((used)) static void erase_adpcm_history(DCACoreDecoder *s)
{
    int ch, band;



    for (ch = 0; ch < DCA_CHANNELS; ch++)
        for (band = 0; band < DCA_SUBBANDS; band++)
            AV_ZERO128(s->subband_samples[ch][band] - DCA_ADPCM_COEFFS);

    emms_c();
}
