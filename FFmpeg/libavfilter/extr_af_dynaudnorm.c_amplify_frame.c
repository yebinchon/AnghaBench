
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nb_samples; scalar_t__* extended_data; } ;
struct TYPE_5__ {int channels; double* prev_amplification_factor; scalar_t__ peak_value; int fade_factors; int * gain_history_smoothed; } ;
typedef TYPE_1__ DynamicAudioNormalizerContext ;
typedef TYPE_2__ AVFrame ;


 double copysign (scalar_t__,double) ;
 int cqueue_dequeue (int ,double*) ;
 scalar_t__ fabs (double) ;
 double fade (double,double,int,int ) ;

__attribute__((used)) static void amplify_frame(DynamicAudioNormalizerContext *s, AVFrame *frame, int enabled)
{
    int c, i;

    for (c = 0; c < s->channels; c++) {
        double *dst_ptr = (double *)frame->extended_data[c];
        double current_amplification_factor;

        cqueue_dequeue(s->gain_history_smoothed[c], &current_amplification_factor);

        for (i = 0; i < frame->nb_samples && enabled; i++) {
            const double amplification_factor = fade(s->prev_amplification_factor[c],
                                                     current_amplification_factor, i,
                                                     s->fade_factors);

            dst_ptr[i] *= amplification_factor;

            if (fabs(dst_ptr[i]) > s->peak_value)
                dst_ptr[i] = copysign(s->peak_value, dst_ptr[i]);
        }

        s->prev_amplification_factor[c] = current_amplification_factor;
    }
}
