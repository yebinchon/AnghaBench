
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_13__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_12__ {TYPE_1__* codecpar; } ;
struct TYPE_11__ {scalar_t__ data_end; } ;
struct TYPE_10__ {int sample_rate; int channels; int bits_per_coded_sample; int bit_rate; int channel_layout; int codec_id; int codec_type; } ;
typedef TYPE_2__ MMFContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_CODEC_ID_ADPCM_YAMAHA ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 unsigned int MKTAG (char,char,char,char) ;
 int av_log (TYPE_4__*,int ,char*,...) ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avio_r8 (int *) ;
 int avio_rb32 (int *) ;
 unsigned int avio_rl32 (int *) ;
 int avio_skip (int *,int) ;
 scalar_t__ avio_tell (int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 int mmf_rate (int) ;

__attribute__((used)) static int mmf_read_header(AVFormatContext *s)
{
    MMFContext *mmf = s->priv_data;
    unsigned int tag;
    AVIOContext *pb = s->pb;
    AVStream *st;
    int64_t size;
    int rate, params;

    tag = avio_rl32(pb);
    if (tag != MKTAG('M', 'M', 'M', 'D'))
        return AVERROR_INVALIDDATA;
    avio_skip(pb, 4);


    for (;; avio_skip(pb, size)) {
        tag = avio_rl32(pb);
        size = avio_rb32(pb);
        if (tag == MKTAG('C', 'N', 'T', 'I'))
            continue;
        if (tag == MKTAG('O', 'P', 'D', 'A'))
            continue;
        break;
    }


    if ((tag & 0xffffff) == MKTAG('M', 'T', 'R', 0)) {
        av_log(s, AV_LOG_ERROR, "MIDI like format found, unsupported\n");
        return AVERROR_PATCHWELCOME;
    }
    if ((tag & 0xffffff) != MKTAG('A', 'T', 'R', 0)) {
        av_log(s, AV_LOG_ERROR, "Unsupported SMAF chunk %08x\n", tag);
        return AVERROR_PATCHWELCOME;
    }

    avio_r8(pb);
    avio_r8(pb);
    params = avio_r8(pb);
    rate = mmf_rate(params & 0x0f);
    if (rate < 0) {
        av_log(s, AV_LOG_ERROR, "Invalid sample rate\n");
        return AVERROR_INVALIDDATA;
    }
    avio_r8(pb);
    avio_r8(pb);
    avio_r8(pb);


    for (;; avio_skip(pb, size)) {
        tag = avio_rl32(pb);
        size = avio_rb32(pb);
        if (tag == MKTAG('A', 't', 's', 'q'))
            continue;
        if (tag == MKTAG('A', 's', 'p', 'I'))
            continue;
        break;
    }


    if ((tag & 0xffffff) != MKTAG('A', 'w', 'a', 0)) {
        av_log(s, AV_LOG_ERROR, "Unexpected SMAF chunk %08x\n", tag);
        return AVERROR_INVALIDDATA;
    }
    mmf->data_end = avio_tell(pb) + size;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_ADPCM_YAMAHA;
    st->codecpar->sample_rate = rate;
    st->codecpar->channels = (params >> 7) + 1;
    st->codecpar->channel_layout = params >> 7 ? AV_CH_LAYOUT_STEREO : AV_CH_LAYOUT_MONO;
    st->codecpar->bits_per_coded_sample = 4;
    st->codecpar->bit_rate = st->codecpar->sample_rate *
                                          st->codecpar->bits_per_coded_sample;

    avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}
