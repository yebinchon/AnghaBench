
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
typedef int int16_t ;
struct TYPE_3__ {int consPLICount; int prevPLI; int* prevResidual; int block_samples; int prevScale; int prevLag; int per_square; int seed; int* prev_lpc; } ;
typedef TYPE_1__ ILBCContext ;


 int BLOCKL_MAX ;
 int FFABS (int) ;
 int FFMIN (int,int) ;
 int LPC_FILTERORDER ;
 int SPL_MUL_16_16 (int,int) ;
 int SPL_MUL_16_16_RSFT (int,int,int) ;
 int SPL_SHIFT_W32 (int,int) ;
 int correlation (int*,int*,int*,int,int,int,int) ;
 int div_w32_w16 (int,int) ;
 int get_size_in_bits (int) ;
 int* kPlcPerSqr ;
 int* kPlcPfSlope ;
 int* kPlcPitchFact ;
 int max_abs_value_w16 (int*,int) ;
 int memcpy (int*,int*,int) ;
 int norm_w32 (int) ;
 int scale_dot_product (int*,int*,int,int) ;

__attribute__((used)) static void do_plc(int16_t *plc_residual,
                   int16_t *plc_lpc,
                   int16_t PLI,

                   int16_t *decresidual,
                   int16_t *lpc,
                   int16_t inlag,
                   ILBCContext *s)
{
    int16_t i, pick;
    int32_t cross, ener, cross_comp, ener_comp = 0;
    int32_t measure, max_measure, energy;
    int16_t max, cross_square_max, cross_square;
    int16_t j, lag, tmp1, tmp2, randlag;
    int16_t shift1, shift2, shift3, shift_max;
    int16_t scale3;
    int16_t corrLen;
    int32_t tmpW32, tmp2W32;
    int16_t use_gain;
    int16_t tot_gain;
    int16_t max_perSquare;
    int16_t scale1, scale2;
    int16_t totscale;
    int32_t nom;
    int16_t denom;
    int16_t pitchfact;
    int16_t use_lag;
    int ind;
    int16_t randvec[BLOCKL_MAX];


    if (PLI == 1) {

        s->consPLICount += 1;




        if (s->prevPLI != 1) {



            max = max_abs_value_w16(s->prevResidual, s->block_samples);
            scale3 = (get_size_in_bits(max) << 1) - 25;
            if (scale3 < 0) {
                scale3 = 0;
            }



            s->prevScale = scale3;



            lag = inlag - 3;


            corrLen = FFMIN(60, s->block_samples - (inlag + 3));

            correlation(&cross, &ener, s->prevResidual, lag, s->block_samples, corrLen, scale3);


            shift_max = get_size_in_bits(FFABS(cross)) - 15;
            cross_square_max = (int16_t) SPL_MUL_16_16_RSFT(SPL_SHIFT_W32(cross, -shift_max), SPL_SHIFT_W32(cross, -shift_max), 15);

            for (j = inlag - 2; j <= inlag + 3; j++) {
                correlation(&cross_comp, &ener_comp, s->prevResidual, j, s->block_samples, corrLen, scale3);




                shift1 = get_size_in_bits(FFABS(cross_comp)) - 15;
                cross_square = (int16_t) SPL_MUL_16_16_RSFT(SPL_SHIFT_W32(cross_comp, -shift1), SPL_SHIFT_W32(cross_comp, -shift1), 15);

                shift2 = get_size_in_bits(ener) - 15;
                measure = SPL_MUL_16_16(SPL_SHIFT_W32(ener, -shift2), cross_square);

                shift3 = get_size_in_bits(ener_comp) - 15;
                max_measure = SPL_MUL_16_16(SPL_SHIFT_W32(ener_comp, -shift3), cross_square_max);



                if (((shift_max << 1) + shift3) > ((shift1 << 1) + shift2)) {
                    tmp1 = FFMIN(31, (shift_max << 1) + shift3 - (shift1 << 1) - shift2);
                    tmp2 = 0;
                } else {
                    tmp1 = 0;
                    tmp2 = FFMIN(31, (shift1 << 1) + shift2 - (shift_max << 1) - shift3);
                }

                if ((measure >> tmp1) > (max_measure >> tmp2)) {

                    lag = j;
                    cross_square_max = cross_square;
                    cross = cross_comp;
                    shift_max = shift1;
                    ener = ener_comp;
                }
            }
            tmp2W32 = scale_dot_product(&s->prevResidual[s->block_samples - corrLen], &s->prevResidual[s->block_samples - corrLen], corrLen, scale3);

            if ((tmp2W32 > 0) && (ener_comp > 0)) {



                scale1 = norm_w32(tmp2W32) - 16;
                tmp1 = SPL_SHIFT_W32(tmp2W32, scale1);

                scale2 = norm_w32(ener) - 16;
                tmp2 = SPL_SHIFT_W32(ener, scale2);
                denom = SPL_MUL_16_16_RSFT(tmp1, tmp2, 16);




                totscale = scale1 + scale2 - 1;
                tmp1 = SPL_SHIFT_W32(cross, (totscale >> 1));
                tmp2 = SPL_SHIFT_W32(cross, totscale - (totscale >> 1));

                nom = SPL_MUL_16_16(tmp1, tmp2);
                max_perSquare = div_w32_w16(nom, denom);
            } else {
                max_perSquare = 0;
            }
        } else {

            lag = s->prevLag;
            max_perSquare = s->per_square;
        }




        use_gain = 32767;

        if (s->consPLICount * s->block_samples > 320) {
            use_gain = 29491;
        } else if (s->consPLICount * s->block_samples > 640) {
            use_gain = 22938;
        } else if (s->consPLICount * s->block_samples > 960) {
            use_gain = 16384;
        } else if (s->consPLICount * s->block_samples > 1280) {
            use_gain = 0;
        }







        if (max_perSquare > 7868) {
            pitchfact = 32767;
        } else if (max_perSquare > 839) {

            ind = 5;
            while ((max_perSquare < kPlcPerSqr[ind]) && (ind > 0)) {
                ind--;
            }

            tmpW32 = kPlcPitchFact[ind] + SPL_MUL_16_16_RSFT(kPlcPfSlope[ind], (max_perSquare - kPlcPerSqr[ind]), 11);

            pitchfact = FFMIN(tmpW32, 32767);

        } else {
            pitchfact = 0;
        }


        use_lag = lag;
        if (lag < 80) {
            use_lag = 2 * lag;
        }


        energy = 0;

        for (i = 0; i < s->block_samples; i++) {

            s->seed = SPL_MUL_16_16(s->seed, 31821) + 13849;
            randlag = 53 + (s->seed & 63);

            pick = i - randlag;

            if (pick < 0) {
                randvec[i] = s->prevResidual[s->block_samples + pick];
            } else {
                randvec[i] = s->prevResidual[pick];
            }


            pick = i - use_lag;

            if (pick < 0) {
                plc_residual[i] = s->prevResidual[s->block_samples + pick];
            } else {
                plc_residual[i] = plc_residual[pick];
            }


            if (i < 80) {
                tot_gain = use_gain;
            } else if (i < 160) {
                tot_gain = SPL_MUL_16_16_RSFT(31130, use_gain, 15);
            } else {
                tot_gain = SPL_MUL_16_16_RSFT(29491, use_gain, 15);
            }


            plc_residual[i] = SPL_MUL_16_16_RSFT(tot_gain, (pitchfact * plc_residual[i] + (32767 - pitchfact) * randvec[i] + 16384) >> 15, 15);



            energy += SPL_MUL_16_16_RSFT(plc_residual[i], plc_residual[i], (s->prevScale + 1));

        }


        if (energy < SPL_SHIFT_W32(s->block_samples * 900, -s->prevScale - 1)) {
            energy = 0;
            for (i = 0; i < s->block_samples; i++) {
                plc_residual[i] = randvec[i];
            }
        }


        memcpy(plc_lpc, (*s).prev_lpc, (LPC_FILTERORDER + 1) * 2);


        s->prevLag = lag;
        s->per_square = max_perSquare;
    } else {
        memcpy(plc_residual, decresidual, s->block_samples * 2);
        memcpy(plc_lpc, lpc, (LPC_FILTERORDER + 1) * 2);
        s->consPLICount = 0;
    }


    s->prevPLI = PLI;
    memcpy(s->prev_lpc, plc_lpc, (LPC_FILTERORDER + 1) * 2);
    memcpy(s->prevResidual, plc_residual, s->block_samples * 2);

    return;
}
