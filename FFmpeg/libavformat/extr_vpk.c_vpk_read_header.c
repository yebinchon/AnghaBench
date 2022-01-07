
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {unsigned int block_count; unsigned int last_block_size; scalar_t__ current_block; } ;
typedef TYPE_2__ VPKDemuxContext ;
struct TYPE_12__ {int pb; TYPE_2__* priv_data; } ;
struct TYPE_11__ {int duration; TYPE_1__* codecpar; } ;
struct TYPE_9__ {int block_align; int sample_rate; int channels; int codec_id; int codec_type; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_ADPCM_PSX ;
 int ENOMEM ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avio_rl32 (int ) ;
 int avio_skip (int ,unsigned int) ;
 unsigned int avio_tell (int ) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;

__attribute__((used)) static int vpk_read_header(AVFormatContext *s)
{
    VPKDemuxContext *vpk = s->priv_data;
    unsigned offset;
    unsigned samples_per_block;
    AVStream *st;

    vpk->current_block = 0;
    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    avio_skip(s->pb, 4);
    st->duration = avio_rl32(s->pb) * 28 / 16;
    offset = avio_rl32(s->pb);
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_ADPCM_PSX;
    st->codecpar->block_align = avio_rl32(s->pb);
    st->codecpar->sample_rate = avio_rl32(s->pb);
    if (st->codecpar->sample_rate <= 0 || st->codecpar->block_align <= 0)
        return AVERROR_INVALIDDATA;
    st->codecpar->channels = avio_rl32(s->pb);
    if (st->codecpar->channels <= 0)
        return AVERROR_INVALIDDATA;
    samples_per_block = ((st->codecpar->block_align / st->codecpar->channels) * 28LL) / 16;
    if (samples_per_block <= 0)
        return AVERROR_INVALIDDATA;
    vpk->block_count = (st->duration + (samples_per_block - 1)) / samples_per_block;
    vpk->last_block_size = (st->duration % samples_per_block) * 16 * st->codecpar->channels / 28;

    if (offset < avio_tell(s->pb))
        return AVERROR_INVALIDDATA;
    avio_skip(s->pb, offset - avio_tell(s->pb));
    avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}
