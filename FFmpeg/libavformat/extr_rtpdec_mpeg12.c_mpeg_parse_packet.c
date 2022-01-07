
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_9__ {int stream_index; int data; } ;
struct TYPE_8__ {int index; TYPE_1__* codecpar; } ;
struct TYPE_7__ {scalar_t__ codec_type; } ;
typedef int PayloadContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 unsigned int AV_RB32 (int const*) ;
 int ENOMEM ;
 scalar_t__ av_new_packet (TYPE_3__*,int) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static int mpeg_parse_packet(AVFormatContext *ctx, PayloadContext *data,
                             AVStream *st, AVPacket *pkt, uint32_t *timestamp,
                             const uint8_t *buf, int len, uint16_t seq,
                             int flags)
{
    unsigned int h;
    if (len <= 4)
        return AVERROR_INVALIDDATA;
    h = AV_RB32(buf);
    buf += 4;
    len -= 4;
    if (st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO && h & (1 << 26)) {

        if (len <= 4)
            return AVERROR_INVALIDDATA;
        buf += 4;
        len -= 4;
    }
    if (av_new_packet(pkt, len) < 0)
        return AVERROR(ENOMEM);
    memcpy(pkt->data, buf, len);
    pkt->stream_index = st->index;
    return 0;
}
