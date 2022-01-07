
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double* plag; int* pgain; double* pfrac; } ;
struct TYPE_5__ {scalar_t__ bitrate; scalar_t__ prev_bitrate; int* pitch_gain; double* pitch_lag; int erasure_count; int pitch_pre_filter_mem; int pitch_synthesis_filter_mem; TYPE_1__ frame; } ;
typedef TYPE_2__ QCELPContext ;


 double FFMIN (double,double) ;
 scalar_t__ I_F_Q ;
 scalar_t__ RATE_HALF ;
 scalar_t__ SILENCE ;
 int apply_gain_ctrl (float*,float const*,float const*) ;
 int av_assert2 (int) ;
 float* do_pitchfilter (int ,float const*,double*,double*,double*) ;
 int memcpy (int ,float*,int) ;
 int memset (double*,int ,int) ;

__attribute__((used)) static void apply_pitch_filters(QCELPContext *q, float *cdn_vector)
{
    int i;
    const float *v_synthesis_filtered, *v_pre_filtered;

    if (q->bitrate >= RATE_HALF || q->bitrate == SILENCE ||
        (q->bitrate == I_F_Q && (q->prev_bitrate >= RATE_HALF))) {

        if (q->bitrate >= RATE_HALF) {

            for (i = 0; i < 4; i++) {
                q->pitch_gain[i] = q->frame.plag[i] ? (q->frame.pgain[i] + 1) * 0.25 : 0.0;

                q->pitch_lag[i] = q->frame.plag[i] + 16;
            }
        } else {
            float max_pitch_gain;

            if (q->bitrate == I_F_Q) {
                  if (q->erasure_count < 3)
                      max_pitch_gain = 0.9 - 0.3 * (q->erasure_count - 1);
                  else
                      max_pitch_gain = 0.0;
            } else {
                av_assert2(q->bitrate == SILENCE);
                max_pitch_gain = 1.0;
            }
            for (i = 0; i < 4; i++)
                q->pitch_gain[i] = FFMIN(q->pitch_gain[i], max_pitch_gain);

            memset(q->frame.pfrac, 0, sizeof(q->frame.pfrac));
        }


        v_synthesis_filtered = do_pitchfilter(q->pitch_synthesis_filter_mem,
                                              cdn_vector, q->pitch_gain,
                                              q->pitch_lag, q->frame.pfrac);


        for (i = 0; i < 4; i++)
            q->pitch_gain[i] = 0.5 * FFMIN(q->pitch_gain[i], 1.0);

        v_pre_filtered = do_pitchfilter(q->pitch_pre_filter_mem,
                                              v_synthesis_filtered,
                                              q->pitch_gain, q->pitch_lag,
                                              q->frame.pfrac);

        apply_gain_ctrl(cdn_vector, v_synthesis_filtered, v_pre_filtered);
    } else {
        memcpy(q->pitch_synthesis_filter_mem,
               cdn_vector + 17, 143 * sizeof(float));
        memcpy(q->pitch_pre_filter_mem, cdn_vector + 17, 143 * sizeof(float));
        memset(q->pitch_gain, 0, sizeof(q->pitch_gain));
        memset(q->pitch_lag, 0, sizeof(q->pitch_lag));
    }
}
