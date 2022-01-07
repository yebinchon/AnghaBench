
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channels; int nb_samples; scalar_t__* extended_data; } ;
typedef TYPE_1__ AVFrame ;


 int DBL_EPSILON ;
 double FFMAX (int ,int ) ;
 scalar_t__ pow_2 (double const) ;
 int sqrt (double) ;

__attribute__((used)) static double compute_frame_rms(AVFrame *frame, int channel)
{
    double rms_value = 0.0;
    int c, i;

    if (channel == -1) {
        for (c = 0; c < frame->channels; c++) {
            const double *data_ptr = (double *)frame->extended_data[c];

            for (i = 0; i < frame->nb_samples; i++) {
                rms_value += pow_2(data_ptr[i]);
            }
        }

        rms_value /= frame->nb_samples * frame->channels;
    } else {
        const double *data_ptr = (double *)frame->extended_data[channel];
        for (i = 0; i < frame->nb_samples; i++) {
            rms_value += pow_2(data_ptr[i]);
        }

        rms_value /= frame->nb_samples;
    }

    return FFMAX(sqrt(rms_value), DBL_EPSILON);
}
