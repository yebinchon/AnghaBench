
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int den; int num; } ;
struct TYPE_9__ {scalar_t__ codec; TYPE_7__ time_base; int nb_frames; int height; int width; int stream_index; } ;
typedef TYPE_2__ VideoProperties ;
struct TYPE_10__ {int avg_frame_rate; int r_frame_rate; int nb_frames; int duration; TYPE_1__* codecpar; int need_parsing; int index; } ;
struct TYPE_8__ {scalar_t__ codec_id; int height; int width; scalar_t__ codec_tag; int codec_type; } ;
typedef TYPE_3__ AVStream ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_VIDEO ;
 int AVSTREAM_PARSE_HEADERS ;
 scalar_t__ AV_CODEC_ID_MPEG2VIDEO ;
 int ENOMEM ;
 int av_inv_q (TYPE_7__) ;
 TYPE_3__* avformat_new_stream (int *,int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int ,int ) ;

__attribute__((used)) static int init_video_stream(AVFormatContext *s, VideoProperties *video)
{
    AVStream *st;

    if (!video->codec)
        return 0;


    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    video->stream_index = st->index;
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = video->codec;

    if (st->codecpar->codec_id == AV_CODEC_ID_MPEG2VIDEO)
        st->need_parsing = AVSTREAM_PARSE_HEADERS;
    st->codecpar->codec_tag = 0;
    st->codecpar->width = video->width;
    st->codecpar->height = video->height;
    st->duration = st->nb_frames = video->nb_frames;
    if (video->time_base.num)
        avpriv_set_pts_info(st, 64, video->time_base.num, video->time_base.den);
    st->r_frame_rate =
    st->avg_frame_rate = av_inv_q(video->time_base);
    return 0;
}
