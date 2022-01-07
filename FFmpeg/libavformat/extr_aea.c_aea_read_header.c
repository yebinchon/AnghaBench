
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int pb; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int channels; int sample_rate; int bit_rate; int block_align; int channel_layout; int codec_id; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AT1_SU_SIZE ;
 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_CODEC_ID_ATRAC1 ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_log (TYPE_3__*,int ,char*,int) ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int avio_r8 (int ) ;
 int avio_skip (int ,int) ;

__attribute__((used)) static int aea_read_header(AVFormatContext *s)
{
    AVStream *st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);


    avio_skip(s->pb, 264);
    st->codecpar->channels = avio_r8(s->pb);
    avio_skip(s->pb, 1783);


    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_ATRAC1;
    st->codecpar->sample_rate = 44100;
    st->codecpar->bit_rate = 292000;

    if (st->codecpar->channels != 1 && st->codecpar->channels != 2) {
        av_log(s, AV_LOG_ERROR, "Channels %d not supported!\n", st->codecpar->channels);
        return AVERROR_INVALIDDATA;
    }

    st->codecpar->channel_layout = (st->codecpar->channels == 1) ? AV_CH_LAYOUT_MONO : AV_CH_LAYOUT_STEREO;

    st->codecpar->block_align = AT1_SU_SIZE * st->codecpar->channels;
    return 0;
}
