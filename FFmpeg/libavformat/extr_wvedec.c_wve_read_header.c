
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int pb; } ;
struct TYPE_9__ {TYPE_1__* codecpar; int duration; } ;
struct TYPE_8__ {int sample_rate; int channels; int bits_per_coded_sample; int block_align; int codec_id; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_PCM_ALAW ;
 int ENOMEM ;
 int av_get_bits_per_sample (int ) ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int avio_rb32 (int ) ;
 int avio_skip (int ,int) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;

__attribute__((used)) static int wve_read_header(AVFormatContext *s)
{
    AVStream *st;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    avio_skip(s->pb, 18);
    st->duration = avio_rb32(s->pb);
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_PCM_ALAW;
    st->codecpar->sample_rate = 8000;
    st->codecpar->channels = 1;
    st->codecpar->bits_per_coded_sample = av_get_bits_per_sample(st->codecpar->codec_id);
    st->codecpar->block_align = st->codecpar->bits_per_coded_sample * st->codecpar->channels / 8;
    avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);
    avio_skip(s->pb, 10);

    return 0;
}
