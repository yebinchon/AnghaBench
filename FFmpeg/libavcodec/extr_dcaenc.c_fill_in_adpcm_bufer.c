
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int channels; int** prediction_mode; int*** adpcm_history; size_t** scale_factor; scalar_t__** quantized; int ** subband; } ;
typedef TYPE_1__ DCAEncContext ;


 int AV_COPY128U (int*,int*) ;
 int DCA_ADPCM_COEFFS ;
 int ff_dca_core_dequantize (int*,scalar_t__,int,int ,int ,int) ;
 int * ff_dca_scale_factor_quant7 ;
 int get_step_size (TYPE_1__*,int,int) ;

__attribute__((used)) static void fill_in_adpcm_bufer(DCAEncContext *c)
{
     int ch, band;
     int32_t step_size;




     for (ch = 0; ch < c->channels; ch++) {
        for (band = 0; band < 32; band++) {
            int32_t *samples = c->subband[ch][band] - DCA_ADPCM_COEFFS;
            if (c->prediction_mode[ch][band] == -1) {
                step_size = get_step_size(c, ch, band);

                ff_dca_core_dequantize(c->adpcm_history[ch][band],
                                       c->quantized[ch][band]+12, step_size,
                                       ff_dca_scale_factor_quant7[c->scale_factor[ch][band]], 0, 4);
            } else {
                AV_COPY128U(c->adpcm_history[ch][band], c->adpcm_history[ch][band]+4);
            }
            samples[0] = c->adpcm_history[ch][band][0] << 7;
            samples[1] = c->adpcm_history[ch][band][1] << 7;
            samples[2] = c->adpcm_history[ch][band][2] << 7;
            samples[3] = c->adpcm_history[ch][band][3] << 7;
        }
     }
}
