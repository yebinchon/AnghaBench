
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nb_samples; scalar_t__* extended_data; } ;
struct TYPE_5__ {int channels; } ;
typedef TYPE_1__ DynamicAudioNormalizerContext ;
typedef TYPE_2__ AVFrame ;


 int DBL_EPSILON ;
 double FFMAX (int ,int ) ;
 scalar_t__ pow_2 (double const) ;
 int sqrt (double) ;

__attribute__((used)) static double compute_frame_std_dev(DynamicAudioNormalizerContext *s,
                                    AVFrame *frame, int channel)
{
    double variance = 0.0;
    int i, c;

    if (channel == -1) {
        for (c = 0; c < s->channels; c++) {
            const double *data_ptr = (double *)frame->extended_data[c];

            for (i = 0; i < frame->nb_samples; i++) {
                variance += pow_2(data_ptr[i]);
            }
        }
        variance /= (s->channels * frame->nb_samples) - 1;
    } else {
        const double *data_ptr = (double *)frame->extended_data[channel];

        for (i = 0; i < frame->nb_samples; i++) {
            variance += pow_2(data_ptr[i]);
        }
        variance /= frame->nb_samples - 1;
    }

    return FFMAX(sqrt(variance), DBL_EPSILON);
}
