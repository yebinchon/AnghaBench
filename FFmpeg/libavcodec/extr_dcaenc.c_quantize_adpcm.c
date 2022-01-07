
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fullband_channels; scalar_t__** prediction_mode; } ;
typedef TYPE_1__ DCAEncContext ;


 int quantize_adpcm_subband (TYPE_1__*,int,int) ;

__attribute__((used)) static void quantize_adpcm(DCAEncContext *c)
{
    int band, ch;

    for (ch = 0; ch < c->fullband_channels; ch++)
        for (band = 0; band < 32; band++)
            if (c->prediction_mode[ch][band] >= 0)
                quantize_adpcm_subband(c, ch, band);
}
