
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
struct TYPE_14__ {int nb_streams; scalar_t__ seek2any; TYPE_2__* iformat; TYPE_1__** streams; } ;
struct TYPE_13__ {scalar_t__ num; int den; } ;
struct TYPE_12__ {int (* read_seek2 ) (TYPE_4__*,int,scalar_t__,scalar_t__,scalar_t__,int) ;scalar_t__ read_seek; scalar_t__ read_timestamp; } ;
struct TYPE_11__ {TYPE_3__ time_base; } ;
typedef TYPE_3__ AVRational ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVSEEK_FLAG_ANY ;
 int AVSEEK_FLAG_BACKWARD ;
 int AV_ROUND_DOWN ;
 int AV_ROUND_PASS_MINMAX ;
 int AV_ROUND_UP ;
 scalar_t__ AV_TIME_BASE ;
 int AV_TIME_BASE_Q ;
 int EINVAL ;
 scalar_t__ av_rescale_q (scalar_t__,int ,TYPE_3__) ;
 scalar_t__ av_rescale_rnd (scalar_t__,int ,scalar_t__,int) ;
 int av_seek_frame (TYPE_4__*,int,scalar_t__,int) ;
 int avformat_queue_attached_pictures (TYPE_4__*) ;
 int ff_read_frame_flush (TYPE_4__*) ;
 int stub1 (TYPE_4__*,int,scalar_t__,scalar_t__,scalar_t__,int) ;

int avformat_seek_file(AVFormatContext *s, int stream_index, int64_t min_ts,
                       int64_t ts, int64_t max_ts, int flags)
{
    if (min_ts > ts || max_ts < ts)
        return -1;
    if (stream_index < -1 || stream_index >= (int)s->nb_streams)
        return AVERROR(EINVAL);

    if (s->seek2any>0)
        flags |= AVSEEK_FLAG_ANY;
    flags &= ~AVSEEK_FLAG_BACKWARD;

    if (s->iformat->read_seek2) {
        int ret;
        ff_read_frame_flush(s);

        if (stream_index == -1 && s->nb_streams == 1) {
            AVRational time_base = s->streams[0]->time_base;
            ts = av_rescale_q(ts, AV_TIME_BASE_Q, time_base);
            min_ts = av_rescale_rnd(min_ts, time_base.den,
                                    time_base.num * (int64_t)AV_TIME_BASE,
                                    AV_ROUND_UP | AV_ROUND_PASS_MINMAX);
            max_ts = av_rescale_rnd(max_ts, time_base.den,
                                    time_base.num * (int64_t)AV_TIME_BASE,
                                    AV_ROUND_DOWN | AV_ROUND_PASS_MINMAX);
            stream_index = 0;
        }

        ret = s->iformat->read_seek2(s, stream_index, min_ts,
                                     ts, max_ts, flags);

        if (ret >= 0)
            ret = avformat_queue_attached_pictures(s);
        return ret;
    }

    if (s->iformat->read_timestamp) {

    }



    if (s->iformat->read_seek || 1) {
        int dir = (ts - (uint64_t)min_ts > (uint64_t)max_ts - ts ? AVSEEK_FLAG_BACKWARD : 0);
        int ret = av_seek_frame(s, stream_index, ts, flags | dir);
        if (ret<0 && ts != min_ts && max_ts != ts) {
            ret = av_seek_frame(s, stream_index, dir ? max_ts : min_ts, flags | dir);
            if (ret >= 0)
                ret = av_seek_frame(s, stream_index, ts, flags | (dir^AVSEEK_FLAG_BACKWARD));
        }
        return ret;
    }


    return -1;
}
