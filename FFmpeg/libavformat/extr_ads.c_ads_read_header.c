
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int pb; } ;
struct TYPE_9__ {int duration; TYPE_1__* codecpar; } ;
struct TYPE_8__ {int channels; scalar_t__ codec_id; int block_align; void* sample_rate; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AV_CODEC_ID_ADPCM_PSX ;
 scalar_t__ AV_CODEC_ID_PCM_S16LE_PLANAR ;
 int ENOMEM ;
 int INT_MAX ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 void* avio_rl32 (int ) ;
 int avio_skip (int ,int) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,void*) ;

__attribute__((used)) static int ads_read_header(AVFormatContext *s)
{
    int align, codec, size;
    AVStream *st;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    avio_skip(s->pb, 8);
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    codec = avio_rl32(s->pb);
    st->codecpar->sample_rate = avio_rl32(s->pb);
    if (st->codecpar->sample_rate <= 0)
        return AVERROR_INVALIDDATA;
    st->codecpar->channels = avio_rl32(s->pb);
    if (st->codecpar->channels <= 0)
        return AVERROR_INVALIDDATA;
    align = avio_rl32(s->pb);
    if (align <= 0 || align > INT_MAX / st->codecpar->channels)
        return AVERROR_INVALIDDATA;

    if (codec == 1)
        st->codecpar->codec_id = AV_CODEC_ID_PCM_S16LE_PLANAR;
    else
        st->codecpar->codec_id = AV_CODEC_ID_ADPCM_PSX;

    st->codecpar->block_align = st->codecpar->channels * align;
    avio_skip(s->pb, 12);
    size = avio_rl32(s->pb);
    if (st->codecpar->codec_id == AV_CODEC_ID_ADPCM_PSX)
        st->duration = (size - 0x40) / 16 / st->codecpar->channels * 28;
    avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}
