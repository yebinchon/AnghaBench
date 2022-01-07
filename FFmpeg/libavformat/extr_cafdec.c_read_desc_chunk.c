
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_11__ {TYPE_2__* priv_data; int * pb; } ;
struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_9__ {void* frames_per_packet; void* bytes_per_packet; } ;
struct TYPE_8__ {scalar_t__ codec_tag; int bit_rate; int codec_id; void* bits_per_coded_sample; scalar_t__ sample_rate; void* channels; void* block_align; int codec_type; } ;
typedef TYPE_2__ CafContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int ENOMEM ;
 scalar_t__ MKTAG (char,char,char,char) ;
 scalar_t__ av_int2double (int ) ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 void* avio_rb32 (int *) ;
 int avio_rb64 (int *) ;
 scalar_t__ avio_rl32 (int *) ;
 int ff_codec_caf_tags ;
 int ff_codec_get_id (int ,scalar_t__) ;
 int ff_mov_get_lpcm_codec_id (void*,int) ;

__attribute__((used)) static int read_desc_chunk(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    CafContext *caf = s->priv_data;
    AVStream *st;
    int flags;


    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);


    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->sample_rate = av_int2double(avio_rb64(pb));
    st->codecpar->codec_tag = avio_rl32(pb);
    flags = avio_rb32(pb);
    caf->bytes_per_packet = avio_rb32(pb);
    st->codecpar->block_align = caf->bytes_per_packet;
    caf->frames_per_packet = avio_rb32(pb);
    st->codecpar->channels = avio_rb32(pb);
    st->codecpar->bits_per_coded_sample = avio_rb32(pb);


    if (caf->frames_per_packet > 0 && caf->bytes_per_packet > 0) {
        st->codecpar->bit_rate = (uint64_t)st->codecpar->sample_rate * (uint64_t)caf->bytes_per_packet * 8
                                 / (uint64_t)caf->frames_per_packet;
    } else {
        st->codecpar->bit_rate = 0;
    }


    if (st->codecpar->codec_tag == MKTAG('l','p','c','m'))
        st->codecpar->codec_id = ff_mov_get_lpcm_codec_id(st->codecpar->bits_per_coded_sample, (flags ^ 0x2) | 0x4);
    else
        st->codecpar->codec_id = ff_codec_get_id(ff_codec_caf_tags, st->codecpar->codec_tag);
    return 0;
}
