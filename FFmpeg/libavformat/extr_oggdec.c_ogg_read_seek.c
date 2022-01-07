
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ogg_stream {int keyframe_seek; } ;
struct ogg {int nstreams; struct ogg_stream* streams; } ;
typedef int int64_t ;
struct TYPE_9__ {TYPE_2__** streams; struct ogg* priv_data; } ;
struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {scalar_t__ codec_type; } ;
typedef TYPE_3__ AVFormatContext ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AVSEEK_FLAG_ANY ;
 int av_assert0 (int) ;
 int ff_seek_frame_binary (TYPE_3__*,int,int ,int) ;
 int ogg_reset (TYPE_3__*) ;

__attribute__((used)) static int ogg_read_seek(AVFormatContext *s, int stream_index,
                         int64_t timestamp, int flags)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + stream_index;
    int ret;

    av_assert0(stream_index < ogg->nstreams);


    ogg_reset(s);



    if (s->streams[stream_index]->codecpar->codec_type == AVMEDIA_TYPE_VIDEO
        && !(flags & AVSEEK_FLAG_ANY))
        os->keyframe_seek = 1;

    ret = ff_seek_frame_binary(s, stream_index, timestamp, flags);
    ogg_reset(s);
    os = ogg->streams + stream_index;
    if (ret < 0)
        os->keyframe_seek = 0;
    return ret;
}
