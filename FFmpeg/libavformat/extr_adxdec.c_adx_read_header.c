
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef long long int64_t ;
struct TYPE_15__ {int header_size; } ;
struct TYPE_14__ {int extradata_size; long long channels; scalar_t__ sample_rate; long long bit_rate; int codec_id; int codec_type; scalar_t__ extradata; } ;
struct TYPE_13__ {TYPE_2__* iformat; int pb; TYPE_1__** streams; TYPE_5__* priv_data; } ;
struct TYPE_12__ {int raw_codec_id; } ;
struct TYPE_11__ {TYPE_4__* codecpar; } ;
typedef int AVStream ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;
typedef TYPE_5__ ADXDemuxerContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_RB32 (scalar_t__) ;
 long long AV_RB8 (scalar_t__) ;
 long long BLOCK_SAMPLES ;
 long long BLOCK_SIZE ;
 int ENOMEM ;
 int SEEK_CUR ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int * avformat_new_stream (TYPE_3__*,int *) ;
 int avio_rb16 (int ) ;
 int avio_seek (int ,int,int ) ;
 int avpriv_set_pts_info (int *,int,long long,long long) ;
 scalar_t__ ff_get_extradata (TYPE_3__*,TYPE_4__*,int ,int) ;

__attribute__((used)) static int adx_read_header(AVFormatContext *s)
{
    ADXDemuxerContext *c = s->priv_data;
    AVCodecParameters *par;

    AVStream *st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    par = s->streams[0]->codecpar;

    if (avio_rb16(s->pb) != 0x8000)
        return AVERROR_INVALIDDATA;
    c->header_size = avio_rb16(s->pb) + 4;
    avio_seek(s->pb, -4, SEEK_CUR);

    if (ff_get_extradata(s, par, s->pb, c->header_size) < 0)
        return AVERROR(ENOMEM);

    if (par->extradata_size < 12) {
        av_log(s, AV_LOG_ERROR, "Invalid extradata size.\n");
        return AVERROR_INVALIDDATA;
    }
    par->channels = AV_RB8 (par->extradata + 7);
    par->sample_rate = AV_RB32(par->extradata + 8);

    if (par->channels <= 0) {
        av_log(s, AV_LOG_ERROR, "invalid number of channels %d\n", par->channels);
        return AVERROR_INVALIDDATA;
    }

    if (par->sample_rate <= 0) {
        av_log(s, AV_LOG_ERROR, "Invalid sample rate %d\n", par->sample_rate);
        return AVERROR_INVALIDDATA;
    }

    par->codec_type = AVMEDIA_TYPE_AUDIO;
    par->codec_id = s->iformat->raw_codec_id;
    par->bit_rate = (int64_t)par->sample_rate * par->channels * BLOCK_SIZE * 8LL / BLOCK_SAMPLES;

    avpriv_set_pts_info(st, 64, BLOCK_SAMPLES, par->sample_rate);

    return 0;
}
