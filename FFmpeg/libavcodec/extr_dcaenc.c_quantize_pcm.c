
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int fullband_channels; int** prediction_mode; int *** quantized; int ** quant; int *** subband; } ;
typedef TYPE_1__ DCAEncContext ;


 int SUBBAND_SAMPLES ;
 int quantize_value (int ,int ) ;

__attribute__((used)) static void quantize_pcm(DCAEncContext *c)
{
    int sample, band, ch;

    for (ch = 0; ch < c->fullband_channels; ch++) {
        for (band = 0; band < 32; band++) {
            if (c->prediction_mode[ch][band] == -1) {
                for (sample = 0; sample < SUBBAND_SAMPLES; sample++) {
                    int32_t val = quantize_value(c->subband[ch][band][sample],
                                                 c->quant[ch][band]);
                    c->quantized[ch][band][sample] = val;
                }
            }
        }
    }
}
