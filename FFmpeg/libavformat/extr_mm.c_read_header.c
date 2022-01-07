
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {scalar_t__ video_pts; scalar_t__ audio_pts; } ;
struct TYPE_9__ {unsigned int width; unsigned int height; int channels; int sample_rate; int channel_layout; int codec_id; scalar_t__ codec_tag; int codec_type; } ;
typedef TYPE_2__ MmDemuxContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CODEC_ID_MMVIDEO ;
 int AV_CODEC_ID_PCM_U8 ;
 int ENOMEM ;
 unsigned int MM_HEADER_LEN_AV ;
 unsigned int MM_TYPE_HEADER ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 unsigned int avio_rl16 (int *) ;
 unsigned int avio_rl32 (int *) ;
 int avio_skip (int *,unsigned int) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;

__attribute__((used)) static int read_header(AVFormatContext *s)
{
    MmDemuxContext *mm = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st;

    unsigned int type, length;
    unsigned int frame_rate, width, height;

    type = avio_rl16(pb);
    length = avio_rl32(pb);

    if (type != MM_TYPE_HEADER)
        return AVERROR_INVALIDDATA;


    avio_rl16(pb);
    frame_rate = avio_rl16(pb);
    avio_rl16(pb);
    width = avio_rl16(pb);
    height = avio_rl16(pb);
    avio_skip(pb, length - 10);


    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_MMVIDEO;
    st->codecpar->codec_tag = 0;
    st->codecpar->width = width;
    st->codecpar->height = height;
    avpriv_set_pts_info(st, 64, 1, frame_rate);


    if (length == MM_HEADER_LEN_AV) {
        st = avformat_new_stream(s, ((void*)0));
        if (!st)
            return AVERROR(ENOMEM);
        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_tag = 0;
        st->codecpar->codec_id = AV_CODEC_ID_PCM_U8;
        st->codecpar->channels = 1;
        st->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
        st->codecpar->sample_rate = 8000;
        avpriv_set_pts_info(st, 64, 1, 8000);
    }

    mm->audio_pts = 0;
    mm->video_pts = 0;
    return 0;
}
