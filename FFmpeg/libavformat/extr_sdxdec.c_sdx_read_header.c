
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int pb; } ;
struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {int channels; int block_align; int codec_id; int sample_rate; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_PCM_U16LE ;
 int AV_CODEC_ID_PCM_U24LE ;
 int AV_CODEC_ID_PCM_U32LE ;
 int AV_CODEC_ID_PCM_U8 ;
 int ENOMEM ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int avio_feof (int ) ;
 int avio_r8 (int ) ;
 int avio_rl32 (int ) ;
 int avio_skip (int ,int) ;

__attribute__((used)) static int sdx_read_header(AVFormatContext *s)
{
    AVStream *st;
    int depth, length;

    avio_skip(s->pb, 4);
    while (!avio_feof(s->pb)) {
        if (avio_r8(s->pb) == 0x1a)
            break;
    }
    if (avio_r8(s->pb) != 1)
        return AVERROR_INVALIDDATA;
    length = avio_r8(s->pb);
    avio_skip(s->pb, length);
    avio_skip(s->pb, 4);
    depth = avio_r8(s->pb);

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->channels = 1;
    st->codecpar->sample_rate = avio_rl32(s->pb);
    switch (depth) {
    case 8:
        st->codecpar->codec_id = AV_CODEC_ID_PCM_U8;
        break;
    case 16:
        st->codecpar->codec_id = AV_CODEC_ID_PCM_U16LE;
        break;
    case 24:
        st->codecpar->codec_id = AV_CODEC_ID_PCM_U24LE;
        break;
    case 32:
        st->codecpar->codec_id = AV_CODEC_ID_PCM_U32LE;
        break;
    default:
        return AVERROR_INVALIDDATA;
    }
    avio_skip(s->pb, 16);
    st->codecpar->block_align = depth / 8;

    return 0;
}
