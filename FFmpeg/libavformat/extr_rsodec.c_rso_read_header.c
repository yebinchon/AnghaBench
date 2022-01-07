
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_12__ {int * pb; } ;
struct TYPE_11__ {unsigned int duration; TYPE_1__* codecpar; } ;
struct TYPE_10__ {int codec_tag; int codec_id; int channels; int sample_rate; int block_align; int channel_layout; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_PATCHWELCOME ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CODEC_ID_ADPCM_IMA_WAV ;
 int ENOMEM ;
 int av_get_bits_per_sample (int) ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 void* avio_rb16 (int *) ;
 int avpriv_report_missing_feature (TYPE_3__*,char*) ;
 int avpriv_request_sample (TYPE_3__*,char*) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;
 int ff_codec_get_id (int ,int) ;
 int ff_codec_rso_tags ;

__attribute__((used)) static int rso_read_header(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    int id, rate, bps;
    unsigned int size;
    enum AVCodecID codec;
    AVStream *st;

    id = avio_rb16(pb);
    size = avio_rb16(pb);
    rate = avio_rb16(pb);
    avio_rb16(pb);

    codec = ff_codec_get_id(ff_codec_rso_tags, id);

    if (codec == AV_CODEC_ID_ADPCM_IMA_WAV) {
        avpriv_report_missing_feature(s, "ADPCM in RSO");
        return AVERROR_PATCHWELCOME;
    }

    bps = av_get_bits_per_sample(codec);
    if (!bps) {
        avpriv_request_sample(s, "Unknown bits per sample");
        return AVERROR_PATCHWELCOME;
    }


    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    st->duration = (size * 8) / bps;
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_tag = id;
    st->codecpar->codec_id = codec;
    st->codecpar->channels = 1;
    st->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
    st->codecpar->sample_rate = rate;
    st->codecpar->block_align = 1;

    avpriv_set_pts_info(st, 64, 1, rate);

    return 0;
}
