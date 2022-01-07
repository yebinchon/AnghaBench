
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mode; unsigned int channels; TYPE_1__* d; } ;
struct TYPE_4__ {double* sample_peak; } ;
typedef TYPE_2__ FFEBUR128State ;


 int AVERROR (int ) ;
 int EINVAL ;
 int FF_EBUR128_MODE_SAMPLE_PEAK ;

int ff_ebur128_sample_peak(FFEBUR128State * st,
                           unsigned int channel_number, double *out)
{
    if ((st->mode & FF_EBUR128_MODE_SAMPLE_PEAK) !=
        FF_EBUR128_MODE_SAMPLE_PEAK) {
        return AVERROR(EINVAL);
    } else if (channel_number >= st->channels) {
        return AVERROR(EINVAL);
    }
    *out = st->d->sample_peak[channel_number];
    return 0;
}
