
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {TYPE_1__** streams; } ;
struct TYPE_4__ {int cur_dts; int time_base; } ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_TIME_BASE_Q ;
 int EINVAL ;
 int av_rescale_q (int ,int ,int ) ;

__attribute__((used)) static int sbg_read_seek2(AVFormatContext *avf, int stream_index,
                          int64_t min_ts, int64_t ts, int64_t max_ts, int flags)
{
    if (flags || stream_index > 0)
        return AVERROR(EINVAL);
    if (stream_index < 0)
        ts = av_rescale_q(ts, AV_TIME_BASE_Q, avf->streams[0]->time_base);
    avf->streams[0]->cur_dts = ts;
    return 0;
}
