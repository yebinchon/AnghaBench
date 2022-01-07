
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {int * data; int stream_index; } ;
struct TYPE_6__ {int index; } ;
typedef int PayloadContext ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVPacket ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_RB16 (int const*) ;
 int ENOMEM ;
 int av_log (int *,int ,char*) ;
 scalar_t__ av_new_packet (TYPE_2__*,int) ;
 int memcpy (int *,int const*,int) ;

int ff_h263_handle_packet(AVFormatContext *ctx, PayloadContext *data,
                          AVStream *st, AVPacket *pkt, uint32_t *timestamp,
                          const uint8_t *buf, int len, uint16_t seq, int flags)
{
    uint8_t *ptr;
    uint16_t header;
    int startcode, vrc, picture_header;

    if (len < 2) {
        av_log(ctx, AV_LOG_ERROR, "Too short H.263 RTP packet\n");
        return AVERROR_INVALIDDATA;
    }
    header = AV_RB16(buf);
    startcode = (header & 0x0400) >> 9;
    vrc = header & 0x0200;
    picture_header = (header & 0x01f8) >> 3;
    buf += 2;
    len -= 2;

    if (vrc) {

        buf += 1;
        len -= 1;
    }
    if (picture_header) {

        buf += picture_header;
        len -= picture_header;
    }

    if (len < 0) {
        av_log(ctx, AV_LOG_ERROR, "Too short H.263 RTP packet\n");
        return AVERROR_INVALIDDATA;
    }

    if (av_new_packet(pkt, len + startcode)) {
        av_log(ctx, AV_LOG_ERROR, "Out of memory\n");
        return AVERROR(ENOMEM);
    }
    pkt->stream_index = st->index;
    ptr = pkt->data;

    if (startcode) {
        *ptr++ = 0;
        *ptr++ = 0;
    }
    memcpy(ptr, buf, len);

    return 0;
}
