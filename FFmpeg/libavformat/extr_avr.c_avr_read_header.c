
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_11__ {int pb; } ;
struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_9__ {int channels; int bits_per_coded_sample; scalar_t__ codec_id; int block_align; int sample_rate; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_PATCHWELCOME ;
 int AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AV_CODEC_ID_NONE ;
 int ENOMEM ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int avio_rb16 (int ) ;
 int avio_rb24 (int ) ;
 int avio_skip (int ,int) ;
 int avpriv_request_sample (TYPE_3__*,char*,int,...) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int ) ;
 scalar_t__ ff_get_pcm_codec_id (int,int ,int,int) ;

__attribute__((used)) static int avr_read_header(AVFormatContext *s)
{
    uint16_t chan, sign, bps;
    AVStream *st;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;

    avio_skip(s->pb, 4);
    avio_skip(s->pb, 8);

    chan = avio_rb16(s->pb);
    if (!chan) {
        st->codecpar->channels = 1;
    } else if (chan == 0xFFFFu) {
        st->codecpar->channels = 2;
    } else {
        avpriv_request_sample(s, "chan %d", chan);
        return AVERROR_PATCHWELCOME;
    }

    st->codecpar->bits_per_coded_sample = bps = avio_rb16(s->pb);

    sign = avio_rb16(s->pb);

    avio_skip(s->pb, 2);
    avio_skip(s->pb, 2);
    avio_skip(s->pb, 1);

    st->codecpar->sample_rate = avio_rb24(s->pb);
    avio_skip(s->pb, 4 * 3);
    avio_skip(s->pb, 2 * 3);
    avio_skip(s->pb, 20);
    avio_skip(s->pb, 64);

    st->codecpar->codec_id = ff_get_pcm_codec_id(bps, 0, 1, sign);
    if (st->codecpar->codec_id == AV_CODEC_ID_NONE) {
        avpriv_request_sample(s, "Bps %d and sign %d", bps, sign);
        return AVERROR_PATCHWELCOME;
    }

    st->codecpar->block_align = bps * st->codecpar->channels / 8;

    avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);
    return 0;
}
