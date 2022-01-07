
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {void* album_peak; scalar_t__ album_gain; void* track_peak; scalar_t__ track_gain; } ;
typedef int AVStream ;
typedef TYPE_1__ AVReplayGain ;


 int AVERROR (int ) ;
 int AV_PKT_DATA_REPLAYGAIN ;
 int ENOMEM ;
 scalar_t__ INT32_MIN ;
 scalar_t__ av_stream_new_side_data (int *,int ,int) ;

int ff_replaygain_export_raw(AVStream *st, int32_t tg, uint32_t tp,
                             int32_t ag, uint32_t ap)
{
    AVReplayGain *replaygain;

    if (tg == INT32_MIN && ag == INT32_MIN)
        return 0;

    replaygain = (AVReplayGain*)av_stream_new_side_data(st, AV_PKT_DATA_REPLAYGAIN,
                                                        sizeof(*replaygain));
    if (!replaygain)
        return AVERROR(ENOMEM);

    replaygain->track_gain = tg;
    replaygain->track_peak = tp;
    replaygain->album_gain = ag;
    replaygain->album_peak = ap;

    return 0;
}
