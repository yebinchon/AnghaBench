
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_11__ {int nb_streams; TYPE_2__** streams; } ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
struct TYPE_9__ {TYPE_6__* avf; TYPE_1__* cur_file; } ;
struct TYPE_8__ {int time_base; } ;
struct TYPE_7__ {scalar_t__ file_inpoint; scalar_t__ start_time; } ;
typedef TYPE_3__ ConcatContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_TIME_BASE_Q ;
 int EIO ;
 scalar_t__ INT64_MAX ;
 scalar_t__ INT64_MIN ;
 int avformat_seek_file (TYPE_6__*,int,scalar_t__,scalar_t__,scalar_t__,int) ;
 int rescale_interval (int ,int ,scalar_t__*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int try_seek(AVFormatContext *avf, int stream,
                    int64_t min_ts, int64_t ts, int64_t max_ts, int flags)
{
    ConcatContext *cat = avf->priv_data;
    int64_t t0 = cat->cur_file->start_time - cat->cur_file->file_inpoint;

    ts -= t0;
    min_ts = min_ts == INT64_MIN ? INT64_MIN : min_ts - t0;
    max_ts = max_ts == INT64_MAX ? INT64_MAX : max_ts - t0;
    if (stream >= 0) {
        if (stream >= cat->avf->nb_streams)
            return AVERROR(EIO);
        rescale_interval(AV_TIME_BASE_Q, cat->avf->streams[stream]->time_base,
                         &min_ts, &ts, &max_ts);
    }
    return avformat_seek_file(cat->avf, stream, min_ts, ts, max_ts, flags);
}
