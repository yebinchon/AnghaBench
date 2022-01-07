
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;
typedef int int16_t ;


 int FFMAX (int,int) ;
 int FFMIN (int,int) ;
 int INT16_MAX ;
 scalar_t__ SPL_MUL_16_16_RSFT (int,int,int) ;
 scalar_t__ SPL_SHIFT_W32 (scalar_t__,int) ;
 int max_abs_value_w16 (int*,int) ;
 int norm_w32 (scalar_t__) ;
 scalar_t__ scale_dot_product (int*,int*,int,int) ;

__attribute__((used)) static int xcorr_coeff(int16_t *target, int16_t *regressor,
                       int16_t subl, int16_t searchLen,
                       int16_t offset, int16_t step)
{
    int16_t maxlag;
    int16_t pos;
    int16_t max;
    int16_t cross_corr_scale, energy_scale;
    int16_t cross_corr_sg_mod, cross_corr_sg_mod_max;
    int32_t cross_corr, energy;
    int16_t cross_corr_mod, energy_mod, enery_mod_max;
    int16_t *tp, *rp;
    int16_t *rp_beg, *rp_end;
    int16_t totscale, totscale_max;
    int16_t scalediff;
    int32_t new_crit, max_crit;
    int shifts;
    int k;


    cross_corr_sg_mod_max = 0;
    enery_mod_max = INT16_MAX;
    totscale_max = -500;
    maxlag = 0;
    pos = 0;


    if (step == 1) {
        max = max_abs_value_w16(regressor, (int16_t) (subl + searchLen - 1));
        rp_beg = regressor;
        rp_end = &regressor[subl];
    } else {
        max = max_abs_value_w16(&regressor[-searchLen], (int16_t) (subl + searchLen - 1));
        rp_beg = &regressor[-1];
        rp_end = &regressor[subl - 1];
    }





    if (max > 5000) {
        shifts = 2;
    } else {
        shifts = 0;
    }


    energy = scale_dot_product(regressor, regressor, subl, shifts);

    for (k = 0; k < searchLen; k++) {
        tp = target;
        rp = &regressor[pos];

        cross_corr = scale_dot_product(tp, rp, subl, shifts);

        if ((energy > 0) && (cross_corr > 0)) {

            cross_corr_scale = norm_w32(cross_corr) - 16;
            cross_corr_mod = (int16_t) SPL_SHIFT_W32(cross_corr, cross_corr_scale);
            energy_scale = norm_w32(energy) - 16;
            energy_mod = (int16_t) SPL_SHIFT_W32(energy, energy_scale);


            cross_corr_sg_mod = (int16_t) SPL_MUL_16_16_RSFT(cross_corr_mod, cross_corr_mod, 16);




            totscale = energy_scale - (cross_corr_scale * 2);




            scalediff = totscale - totscale_max;
            scalediff = FFMIN(scalediff, 31);
            scalediff = FFMAX(scalediff, -31);





            if (scalediff < 0) {
                new_crit = ((int32_t) cross_corr_sg_mod * enery_mod_max) >> (-scalediff);
                max_crit = ((int32_t) cross_corr_sg_mod_max * energy_mod);
            } else {
                new_crit = ((int32_t) cross_corr_sg_mod * enery_mod_max);
                max_crit = ((int32_t) cross_corr_sg_mod_max * energy_mod) >> scalediff;
            }




            if (new_crit > max_crit) {
                cross_corr_sg_mod_max = cross_corr_sg_mod;
                enery_mod_max = energy_mod;
                totscale_max = totscale;
                maxlag = k;
            }
        }
        pos += step;


        energy += (unsigned)step * ((*rp_end * *rp_end - *rp_beg * *rp_beg) >> shifts);

        rp_beg += step;
        rp_end += step;
    }

    return maxlag + offset;
}
