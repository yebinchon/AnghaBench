
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int pb; } ;
struct TYPE_11__ {TYPE_1__* codecpar; void* duration; } ;
struct TYPE_10__ {int channels; unsigned int block_align; void* sample_rate; int codec_id; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_ADPCM_AICA ;
 int AV_CODEC_ID_PCM_S16LE_PLANAR ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int INT_MAX ;
 int av_log (TYPE_3__*,int ,char*,int,int) ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 void* avio_rl32 (int ) ;
 int avio_skip (int ,int) ;
 int avio_tell (int ) ;
 int avpriv_request_sample (TYPE_3__*,char*,unsigned int) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,void*) ;

__attribute__((used)) static int dcstr_read_header(AVFormatContext *s)
{
    unsigned codec, align;
    int mult;
    AVStream *st;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->channels = avio_rl32(s->pb);
    st->codecpar->sample_rate = avio_rl32(s->pb);
    codec = avio_rl32(s->pb);
    align = avio_rl32(s->pb);
    avio_skip(s->pb, 4);
    st->duration = avio_rl32(s->pb);
    mult = avio_rl32(s->pb);
    if (st->codecpar->channels <= 0 || mult <= 0 || mult > INT_MAX / st->codecpar->channels) {
        av_log(s, AV_LOG_ERROR, "invalid number of channels %d x %d\n", st->codecpar->channels, mult);
        return AVERROR_INVALIDDATA;
    }
    st->codecpar->channels *= mult;
    if (!align || align > INT_MAX / st->codecpar->channels)
        return AVERROR_INVALIDDATA;
    st->codecpar->block_align = align * st->codecpar->channels;

    switch (codec) {
    case 4: st->codecpar->codec_id = AV_CODEC_ID_ADPCM_AICA; break;
    case 16: st->codecpar->codec_id = AV_CODEC_ID_PCM_S16LE_PLANAR; break;
    default: avpriv_request_sample(s, "codec %X", codec);
             return AVERROR_PATCHWELCOME;
    }

    avio_skip(s->pb, 0x800 - avio_tell(s->pb));
    avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}
