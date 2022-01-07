
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {TYPE_1__* iformat; } ;
struct TYPE_7__ {int read_seek; scalar_t__ read_seek2; } ;
typedef TYPE_2__ AVFormatContext ;


 int AVSEEK_FLAG_BACKWARD ;
 int INT64_MAX ;
 int INT64_MIN ;
 int avformat_queue_attached_pictures (TYPE_2__*) ;
 int avformat_seek_file (TYPE_2__*,int,int ,int ,int ,int) ;
 int seek_frame_internal (TYPE_2__*,int,int ,int) ;

int av_seek_frame(AVFormatContext *s, int stream_index,
                  int64_t timestamp, int flags)
{
    int ret;

    if (s->iformat->read_seek2 && !s->iformat->read_seek) {
        int64_t min_ts = INT64_MIN, max_ts = INT64_MAX;
        if ((flags & AVSEEK_FLAG_BACKWARD))
            max_ts = timestamp;
        else
            min_ts = timestamp;
        return avformat_seek_file(s, stream_index, min_ts, timestamp, max_ts,
                                  flags & ~AVSEEK_FLAG_BACKWARD);
    }

    ret = seek_frame_internal(s, stream_index, timestamp, flags);

    if (ret >= 0)
        ret = avformat_queue_attached_pictures(s);

    return ret;
}
