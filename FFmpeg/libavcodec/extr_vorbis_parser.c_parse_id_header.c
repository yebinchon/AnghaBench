
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int* blocksize; } ;
typedef TYPE_1__ AVVorbisParseContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_1__*,int ,char*) ;
 scalar_t__ memcmp (int const*,char*,int) ;

__attribute__((used)) static int parse_id_header(AVVorbisParseContext *s,
                           const uint8_t *buf, int buf_size)
{

    if (buf_size < 30) {
        av_log(s, AV_LOG_ERROR, "Id header is too short\n");
        return AVERROR_INVALIDDATA;
    }


    if (buf[0] != 1) {
        av_log(s, AV_LOG_ERROR, "Wrong packet type in Id header\n");
        return AVERROR_INVALIDDATA;
    }


    if (memcmp(&buf[1], "vorbis", 6)) {
        av_log(s, AV_LOG_ERROR, "Invalid packet signature in Id header\n");
        return AVERROR_INVALIDDATA;
    }

    if (!(buf[29] & 0x1)) {
        av_log(s, AV_LOG_ERROR, "Invalid framing bit in Id header\n");
        return AVERROR_INVALIDDATA;
    }

    s->blocksize[0] = 1 << (buf[28] & 0xF);
    s->blocksize[1] = 1 << (buf[28] >> 4);

    return 0;
}
