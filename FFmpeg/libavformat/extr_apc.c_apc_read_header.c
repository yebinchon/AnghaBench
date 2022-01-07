
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_10__ {int sample_rate; int channels; int bits_per_coded_sample; int bit_rate; int block_align; int channel_layout; int codec_id; int codec_type; } ;
struct TYPE_9__ {int * pb; } ;
struct TYPE_8__ {TYPE_4__* codecpar; } ;
typedef TYPE_1__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_CODEC_ID_ADPCM_IMA_APC ;
 int ENOMEM ;
 TYPE_1__* avformat_new_stream (TYPE_2__*,int *) ;
 int avio_rl32 (int *) ;
 scalar_t__ ff_get_extradata (TYPE_2__*,TYPE_4__*,int *,int) ;

__attribute__((used)) static int apc_read_header(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    AVStream *st;

    avio_rl32(pb);
    avio_rl32(pb);
    avio_rl32(pb);

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_ADPCM_IMA_APC;

    avio_rl32(pb);
    st->codecpar->sample_rate = avio_rl32(pb);


    if (ff_get_extradata(s, st->codecpar, pb, 2 * 4) < 0)
        return AVERROR(ENOMEM);

    if (avio_rl32(pb)) {
        st->codecpar->channels = 2;
        st->codecpar->channel_layout = AV_CH_LAYOUT_STEREO;
    } else {
        st->codecpar->channels = 1;
        st->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
    }

    st->codecpar->bits_per_coded_sample = 4;
    st->codecpar->bit_rate = (int64_t)st->codecpar->bits_per_coded_sample * st->codecpar->channels
                          * st->codecpar->sample_rate;
    st->codecpar->block_align = 1;

    return 0;
}
