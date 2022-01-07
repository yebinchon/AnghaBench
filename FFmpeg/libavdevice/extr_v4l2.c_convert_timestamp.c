
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct video_data {scalar_t__ timefilter; scalar_t__ last_time_m; scalar_t__ ts_mode; } ;
typedef scalar_t__ int64_t ;
struct TYPE_4__ {struct video_data* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;


 scalar_t__ av_gettime () ;
 scalar_t__ av_gettime_monotonic () ;
 scalar_t__ ff_timefilter_eval (scalar_t__,scalar_t__) ;
 int ff_timefilter_update (scalar_t__,scalar_t__,scalar_t__) ;
 int init_convert_timestamp (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int convert_timestamp(AVFormatContext *ctx, int64_t *ts)
{
    struct video_data *s = ctx->priv_data;

    if (s->ts_mode) {
        int r = init_convert_timestamp(ctx, *ts);
        if (r < 0)
            return r;
    }
    return 0;
}
