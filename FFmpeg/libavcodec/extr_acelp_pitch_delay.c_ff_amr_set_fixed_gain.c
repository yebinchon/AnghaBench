
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prediction_error ;


 float avpriv_scalarproduct_float_c (float const*,float*,int) ;
 float ff_exp10 (double) ;
 double log10f (float) ;
 int memmove (float*,float*,int) ;
 float sqrtf (float) ;

float ff_amr_set_fixed_gain(float fixed_gain_factor, float fixed_mean_energy,
                            float *prediction_error, float energy_mean,
                            const float *pred_table)
{



    float val = fixed_gain_factor *
        ff_exp10(0.05 *
              (avpriv_scalarproduct_float_c(pred_table, prediction_error, 4) +
               energy_mean)) /
        sqrtf(fixed_mean_energy ? fixed_mean_energy : 1.0);


    memmove(&prediction_error[0], &prediction_error[1],
            3 * sizeof(prediction_error[0]));
    prediction_error[3] = 20.0 * log10f(fixed_gain_factor);

    return val;
}
