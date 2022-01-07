
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_8__ {int (* celp_lp_synthesis_filterf ) (float*,float*,float*,int,int ) ;} ;
struct TYPE_7__ {float (* dot_productf ) (float*,float*,int) ;} ;
struct TYPE_6__ {int (* weighted_vector_sumf ) (float*,double*,float const*,double,float,int) ;} ;
struct TYPE_9__ {double* pitch_vector; double* pitch_gain; scalar_t__ cur_frame_mode; TYPE_3__ celpf_ctx; TYPE_2__ celpm_ctx; TYPE_1__ acelpv_ctx; } ;
typedef TYPE_4__ AMRContext ;


 scalar_t__ AMR_SAMPLE_BOUND ;
 int AMR_SUBFRAME_SIZE ;
 double FFMIN (double,double) ;
 int LP_FILTER_ORDER ;
 scalar_t__ MODE_12k2 ;
 double SHARP_MAX ;
 scalar_t__ fabsf (float) ;
 int ff_scale_vector_to_given_sum_of_squares (float*,float*,float,int) ;
 int stub1 (float*,double*,float const*,double,float,int) ;
 float stub2 (float*,float*,int) ;
 int stub3 (float*,float*,float*,int,int ) ;

__attribute__((used)) static int synthesis(AMRContext *p, float *lpc,
                     float fixed_gain, const float *fixed_vector,
                     float *samples, uint8_t overflow)
{
    int i;
    float excitation[AMR_SUBFRAME_SIZE];



    if (overflow)
        for (i = 0; i < AMR_SUBFRAME_SIZE; i++)
            p->pitch_vector[i] *= 0.25;

    p->acelpv_ctx.weighted_vector_sumf(excitation, p->pitch_vector, fixed_vector,
                            p->pitch_gain[4], fixed_gain, AMR_SUBFRAME_SIZE);


    if (p->pitch_gain[4] > 0.5 && !overflow) {
        float energy = p->celpm_ctx.dot_productf(excitation, excitation,
                                                    AMR_SUBFRAME_SIZE);
        float pitch_factor =
            p->pitch_gain[4] *
            (p->cur_frame_mode == MODE_12k2 ?
                0.25 * FFMIN(p->pitch_gain[4], 1.0) :
                0.5 * FFMIN(p->pitch_gain[4], SHARP_MAX));

        for (i = 0; i < AMR_SUBFRAME_SIZE; i++)
            excitation[i] += pitch_factor * p->pitch_vector[i];

        ff_scale_vector_to_given_sum_of_squares(excitation, excitation, energy,
                                                AMR_SUBFRAME_SIZE);
    }

    p->celpf_ctx.celp_lp_synthesis_filterf(samples, lpc, excitation,
                                 AMR_SUBFRAME_SIZE,
                                 LP_FILTER_ORDER);


    for (i = 0; i < AMR_SUBFRAME_SIZE; i++)
        if (fabsf(samples[i]) > AMR_SAMPLE_BOUND) {
            return 1;
        }

    return 0;
}
