
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* internal; int pb; } ;
struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_9__ {void* data_offset; } ;
struct TYPE_8__ {int channels; int block_align; void* sample_rate; int codec_id; int codec_type; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_ADPCM_MS ;
 int ENOMEM ;
 int ENOSYS ;
 int FF_SANE_NB_CHANNELS ;
 int INT_MAX ;
 int SEEK_SET ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avio_r8 (int ) ;
 void* avio_rl32 (int ) ;
 int avio_seek (int ,void*,int ) ;

__attribute__((used)) static int read_header(AVFormatContext *s)
{
    AVStream *st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_ADPCM_MS;

    avio_rl32(s->pb);
    avio_rl32(s->pb);
    st->codecpar->sample_rate = avio_rl32(s->pb);
    st->codecpar->channels = avio_rl32(s->pb);
    if (st->codecpar->channels > FF_SANE_NB_CHANNELS)
        return AVERROR(ENOSYS);
    s->internal->data_offset = avio_rl32(s->pb);
    avio_r8(s->pb);
    st->codecpar->block_align = avio_rl32(s->pb);
    if (st->codecpar->block_align > INT_MAX / FF_SANE_NB_CHANNELS)
        return AVERROR_INVALIDDATA;
    st->codecpar->block_align *= st->codecpar->channels;

    avio_seek(s->pb, s->internal->data_offset, SEEK_SET);

    return 0;
}
