
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* codecpar; } ;
struct TYPE_4__ {int channels; int channel_layout; } ;
typedef TYPE_2__ AVStream ;
typedef int AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,int) ;

__attribute__((used)) static int set_channels(AVFormatContext *avctx, AVStream *st, int channels)
{
    if (channels <= 0) {
        av_log(avctx, AV_LOG_ERROR, "Channel count %d invalid.\n", channels);
        return AVERROR_INVALIDDATA;
    }
    st->codecpar->channels = channels;
    st->codecpar->channel_layout = (st->codecpar->channels == 1) ? AV_CH_LAYOUT_MONO
                                                                 : AV_CH_LAYOUT_STEREO;
    return 0;
}
