
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channels; int nb_samples; scalar_t__* extended_data; } ;
typedef TYPE_1__ AVFrame ;


 double DBL_EPSILON ;
 double FFMAX (double,int ) ;
 int fabs (double) ;

__attribute__((used)) static double find_peak_magnitude(AVFrame *frame, int channel)
{
    double max = DBL_EPSILON;
    int c, i;

    if (channel == -1) {
        for (c = 0; c < frame->channels; c++) {
            double *data_ptr = (double *)frame->extended_data[c];

            for (i = 0; i < frame->nb_samples; i++)
                max = FFMAX(max, fabs(data_ptr[i]));
        }
    } else {
        double *data_ptr = (double *)frame->extended_data[channel];

        for (i = 0; i < frame->nb_samples; i++)
            max = FFMAX(max, fabs(data_ptr[i]));
    }

    return max;
}
