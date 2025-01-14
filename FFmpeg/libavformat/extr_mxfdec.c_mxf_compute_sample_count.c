
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
typedef int int64_t ;
struct TYPE_18__ {int num; int den; } ;
struct TYPE_17__ {int index; TYPE_1__* codecpar; int time_base; TYPE_2__* priv_data; } ;
struct TYPE_16__ {int fc; } ;
struct TYPE_15__ {scalar_t__* samples_per_frame; } ;
struct TYPE_14__ {int edit_rate; } ;
struct TYPE_13__ {scalar_t__ codec_type; } ;
typedef TYPE_2__ MXFTrack ;
typedef TYPE_3__ MXFSamplesPerFrame ;
typedef TYPE_4__ MXFContext ;
typedef TYPE_5__ AVStream ;
typedef TYPE_6__ AVRational ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 int AV_LOG_WARNING ;
 int av_assert2 (int) ;
 TYPE_6__ av_inv_q (int ) ;
 int av_log (int ,int ,char*,int ,int,int,int,int) ;
 int av_rescale_q (int,TYPE_6__,int ) ;
 TYPE_3__* ff_mxf_get_samples_per_frame (int ,TYPE_6__) ;

__attribute__((used)) static int64_t mxf_compute_sample_count(MXFContext *mxf, AVStream *st,
                                        int64_t edit_unit)
{
    int i, total = 0, size = 0;
    MXFTrack *track = st->priv_data;
    AVRational time_base = av_inv_q(track->edit_rate);
    AVRational sample_rate = av_inv_q(st->time_base);
    const MXFSamplesPerFrame *spf = ((void*)0);
    int64_t sample_count;


    if (st->codecpar->codec_type != AVMEDIA_TYPE_AUDIO)
        return edit_unit;

    if ((sample_rate.num / sample_rate.den) == 48000)
        spf = ff_mxf_get_samples_per_frame(mxf->fc, time_base);
    if (!spf) {
        int remainder = (sample_rate.num * time_base.num) %
                        (time_base.den * sample_rate.den);
        if (remainder)
            av_log(mxf->fc, AV_LOG_WARNING,
                   "seeking detected on stream #%d with time base (%d/%d) and "
                   "sample rate (%d/%d), audio pts won't be accurate.\n",
                   st->index, time_base.num, time_base.den,
                   sample_rate.num, sample_rate.den);
        return av_rescale_q(edit_unit, sample_rate, track->edit_rate);
    }

    while (spf->samples_per_frame[size]) {
        total += spf->samples_per_frame[size];
        size++;
    }

    av_assert2(size);

    sample_count = (edit_unit / size) * (uint64_t)total;
    for (i = 0; i < edit_unit % size; i++) {
        sample_count += spf->samples_per_frame[i];
    }

    return sample_count;
}
