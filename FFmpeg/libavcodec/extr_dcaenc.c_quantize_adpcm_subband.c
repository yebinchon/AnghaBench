
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_5__ {size_t** diff_peak_cb; size_t** scale_factor; int * cb_to_level; int ** quantized; scalar_t__** adpcm_history; int ** subband; int ** quant; int ** prediction_mode; int ** abits; } ;
typedef TYPE_1__ DCAEncContext ;


 int SUBBAND_SAMPLES ;
 size_t calc_one_scale (TYPE_1__*,size_t,int ,int *) ;
 int * ff_dca_scale_factor_quant7 ;
 int ff_dcaadpcm_do_real (int ,int ,int ,size_t,scalar_t__,int ,scalar_t__,int ,int ,int ) ;
 size_t get_step_size (TYPE_1__*,int,int) ;

__attribute__((used)) static inline void quantize_adpcm_subband(DCAEncContext *c, int ch, int band)
{
    int32_t step_size;
    int32_t diff_peak_cb = c->diff_peak_cb[ch][band];
    c->scale_factor[ch][band] = calc_one_scale(c, diff_peak_cb,
                                               c->abits[ch][band],
                                               &c->quant[ch][band]);

    step_size = get_step_size(c, ch, band);
    ff_dcaadpcm_do_real(c->prediction_mode[ch][band],
                        c->quant[ch][band],
                        ff_dca_scale_factor_quant7[c->scale_factor[ch][band]],
                        step_size, c->adpcm_history[ch][band], c->subband[ch][band],
                        c->adpcm_history[ch][band] + 4, c->quantized[ch][band],
                        SUBBAND_SAMPLES, c->cb_to_level[-diff_peak_cb]);
}
