
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int pb; } ;
struct TYPE_9__ {TYPE_1__* codecpar; int duration; } ;
struct TYPE_8__ {int channels; int sample_rate; int block_align; int codec_id; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_ADPCM_MTAF ;
 int ENOMEM ;
 int SEEK_SET ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int avio_r8 (int ) ;
 int avio_rl32 (int ) ;
 int avio_seek (int ,int,int ) ;
 int avio_skip (int ,int) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;

__attribute__((used)) static int mtaf_read_header(AVFormatContext *s)
{
    int stream_count;
    AVStream *st;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    avio_skip(s->pb, 0x5c);
    st->duration = avio_rl32(s->pb);
    avio_skip(s->pb, 1);
    stream_count = avio_r8(s->pb);
    if (!stream_count)
        return AVERROR_INVALIDDATA;

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_ADPCM_MTAF;
    st->codecpar->channels = 2 * stream_count;
    st->codecpar->sample_rate = 48000;
    st->codecpar->block_align = 0x110 * st->codecpar->channels / 2;
    avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);

    avio_seek(s->pb, 0x800, SEEK_SET);

    return 0;
}
