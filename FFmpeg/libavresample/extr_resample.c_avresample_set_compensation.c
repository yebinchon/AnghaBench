
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {TYPE_1__* resample; int resample_needed; } ;
struct TYPE_5__ {int compensation_distance; int dst_incr; int ideal_dst_incr; } ;
typedef TYPE_1__ ResampleContext ;
typedef TYPE_2__ AVAudioResampleContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_2__*,int ,char*) ;

int avresample_set_compensation(AVAudioResampleContext *avr, int sample_delta,
                                int compensation_distance)
{
    ResampleContext *c;

    if (compensation_distance < 0)
        return AVERROR(EINVAL);
    if (!compensation_distance && sample_delta)
        return AVERROR(EINVAL);

    if (!avr->resample_needed) {
        av_log(avr, AV_LOG_ERROR, "Unable to set resampling compensation\n");
        return AVERROR(EINVAL);
    }
    c = avr->resample;
    c->compensation_distance = compensation_distance;
    if (compensation_distance) {
        c->dst_incr = c->ideal_dst_incr - c->ideal_dst_incr *
                      (int64_t)sample_delta / compensation_distance;
    } else {
        c->dst_incr = c->ideal_dst_incr;
    }

    return 0;
}
