
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_11__ {int duration; TYPE_1__* codecpar; } ;
struct TYPE_10__ {int bit_depth; int size; int read_block; } ;
struct TYPE_9__ {int channels; int sample_rate; int codec_type; int codec_id; } ;
typedef TYPE_2__ SDSContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_PCM_U32LE ;
 int ENOMEM ;
 unsigned int SDS_3BYTE_TO_INT_DECODE (unsigned int) ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avio_r8 (int *) ;
 unsigned int avio_rl24 (int *) ;
 int avio_size (int *) ;
 int avio_skip (int *,int) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 int byte2_read ;
 int byte3_read ;
 int byte4_read ;

__attribute__((used)) static int sds_read_header(AVFormatContext *ctx)
{
    SDSContext *s = ctx->priv_data;
    unsigned sample_period;
    AVIOContext *pb = ctx->pb;
    AVStream *st;

    st = avformat_new_stream(ctx, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    avio_skip(pb, 4);
    avio_skip(pb, 2);

    s->bit_depth = avio_r8(pb);
    if (s->bit_depth < 8 || s->bit_depth > 28)
        return AVERROR_INVALIDDATA;

    if (s->bit_depth < 14) {
        s->read_block = byte2_read;
        s->size = 60 * 4;
    } else if (s->bit_depth < 21) {
        s->read_block = byte3_read;
        s->size = 40 * 4;
    } else {
        s->read_block = byte4_read;
        s->size = 30 * 4;
    }
    st->codecpar->codec_id = AV_CODEC_ID_PCM_U32LE;

    sample_period = avio_rl24(pb);
    sample_period = SDS_3BYTE_TO_INT_DECODE(sample_period);
    avio_skip(pb, 11);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->channels = 1;
    st->codecpar->sample_rate = sample_period ? 1000000000 / sample_period : 16000;
    st->duration = (avio_size(pb) - 21) / (127) * s->size / 4;

    avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}
