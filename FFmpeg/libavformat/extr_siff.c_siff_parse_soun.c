
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rate; int bits; int block_align; } ;
typedef TYPE_1__ SIFFContext ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ TAG_SHDR ;
 int av_log (int *,int ,char*) ;
 int avio_rb32 (int *) ;
 void* avio_rl16 (int *) ;
 scalar_t__ avio_rl32 (int *) ;
 int avio_skip (int *,int) ;
 int create_audio_stream (int *,TYPE_1__*) ;

__attribute__((used)) static int siff_parse_soun(AVFormatContext *s, SIFFContext *c, AVIOContext *pb)
{
    if (avio_rl32(pb) != TAG_SHDR) {
        av_log(s, AV_LOG_ERROR, "Header chunk is missing\n");
        return AVERROR_INVALIDDATA;
    }
    if (avio_rb32(pb) != 8) {
        av_log(s, AV_LOG_ERROR, "Header chunk size is incorrect\n");
        return AVERROR_INVALIDDATA;
    }
    avio_skip(pb, 4);
    c->rate = avio_rl16(pb);
    c->bits = avio_rl16(pb);
    c->block_align = c->rate * (c->bits >> 3);
    return create_audio_stream(s, c);
}
