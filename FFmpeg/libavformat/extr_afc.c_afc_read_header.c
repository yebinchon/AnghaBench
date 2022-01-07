
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int channels; int* extradata; int sample_rate; int channel_layout; int codec_id; int codec_type; } ;
struct TYPE_11__ {void* data_end; } ;
struct TYPE_10__ {int pb; TYPE_3__* priv_data; } ;
struct TYPE_9__ {TYPE_4__* codecpar; void* duration; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AFCDemuxContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_CODEC_ID_ADPCM_AFC ;
 int ENOMEM ;
 TYPE_1__* avformat_new_stream (TYPE_2__*,int *) ;
 int avio_rb16 (int ) ;
 void* avio_rb32 (int ) ;
 int avio_skip (int ,int) ;
 int avpriv_set_pts_info (TYPE_1__*,int,int,int ) ;
 scalar_t__ ff_alloc_extradata (TYPE_4__*,int) ;

__attribute__((used)) static int afc_read_header(AVFormatContext *s)
{
    AFCDemuxContext *c = s->priv_data;
    AVStream *st;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_ADPCM_AFC;
    st->codecpar->channels = 2;
    st->codecpar->channel_layout = AV_CH_LAYOUT_STEREO;

    if (ff_alloc_extradata(st->codecpar, 1))
        return AVERROR(ENOMEM);
    st->codecpar->extradata[0] = 8 * st->codecpar->channels;

    c->data_end = avio_rb32(s->pb) + 32LL;
    st->duration = avio_rb32(s->pb);
    st->codecpar->sample_rate = avio_rb16(s->pb);
    avio_skip(s->pb, 22);
    avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}
