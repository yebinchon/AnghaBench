
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct video_data {scalar_t__ ts_mode; int timefilter; } ;
typedef int int64_t ;
struct TYPE_11__ {scalar_t__ num; } ;
struct TYPE_10__ {TYPE_1__** streams; struct video_data* priv_data; } ;
struct TYPE_9__ {int member_0; int member_1; } ;
struct TYPE_8__ {TYPE_6__ avg_frame_rate; } ;
typedef TYPE_2__ AVRational ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int AV_TIME_BASE ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ V4L_TS_ABS ;
 void* V4L_TS_CONVERT_READY ;
 scalar_t__ V4L_TS_MONO2ABS ;
 int av_gettime () ;
 int av_gettime_monotonic () ;
 int av_log (TYPE_3__*,int ,char*) ;
 int av_rescale_q (int,TYPE_2__,TYPE_6__) ;
 int ff_timefilter_new (int,int,double) ;

__attribute__((used)) static int init_convert_timestamp(AVFormatContext *ctx, int64_t ts)
{
    struct video_data *s = ctx->priv_data;
    int64_t now;

    now = av_gettime();
    if (s->ts_mode == V4L_TS_ABS &&
        ts <= now + 1 * AV_TIME_BASE && ts >= now - 10 * AV_TIME_BASE) {
        av_log(ctx, AV_LOG_INFO, "Detected absolute timestamps\n");
        s->ts_mode = V4L_TS_CONVERT_READY;
        return 0;
    }
    av_log(ctx, AV_LOG_ERROR, "Unknown timestamps\n");
    return AVERROR(EIO);
}
