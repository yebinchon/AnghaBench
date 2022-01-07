
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_5__ {int (* scalarproduct_int16 ) (int const*,int const*,int,int ) ;} ;
struct TYPE_4__ {int (* scalarproduct_int16 ) (int const*,int const*,int) ;} ;
typedef TYPE_1__ AudioDSPContext ;


 int bidir_sal (int,int) ;
 TYPE_3__* dsp ;
 int ff_exp10 (double) ;
 int ff_exp2 (int) ;
 long long ff_log2 (int ) ;
 int sqrt (int ) ;
 int stub1 (int const*,int const*,int,int ) ;
 int stub2 (int const*,int const*,int) ;

int16_t ff_acelp_decode_gain_code(
    AudioDSPContext *adsp,
    int gain_corr_factor,
    const int16_t* fc_v,
    int mr_energy,
    const int16_t* quant_energy,
    const int16_t* ma_prediction_coeff,
    int subframe_size,
    int ma_pred_order)
{
    int i;

    mr_energy <<= 10;

    for(i=0; i<ma_pred_order; i++)
        mr_energy += quant_energy[i] * ma_prediction_coeff[i];
    mr_energy = gain_corr_factor * ff_exp10((double)mr_energy / (20 << 23)) /
                sqrt(adsp->scalarproduct_int16(fc_v, fc_v, subframe_size));
    return mr_energy >> 12;

}
