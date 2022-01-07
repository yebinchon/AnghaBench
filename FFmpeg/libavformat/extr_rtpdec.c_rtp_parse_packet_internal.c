
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
struct TYPE_15__ {int stream_index; int data; } ;
struct TYPE_14__ {int index; } ;
struct TYPE_13__ {unsigned int ssrc; int payload_type; int seq; TYPE_3__* st; int dynamic_protocol_context; int ic; TYPE_1__* handler; int statistics; } ;
struct TYPE_12__ {int (* parse_packet ) (int ,int ,TYPE_3__*,TYPE_4__*,void**,int const*,int,int,int) ;} ;
typedef TYPE_2__ RTPDemuxContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_RB16 (int const*) ;
 void* AV_RB32 (int const*) ;
 int EINVAL ;
 int RTP_FLAG_MARKER ;
 int av_log (int ,int ,char*,int,int,int) ;
 int av_new_packet (TYPE_4__*,int) ;
 int finalize_packet (TYPE_2__*,TYPE_4__*,void*) ;
 int memcpy (int ,int const*,int) ;
 int rtp_valid_packet_in_sequence (int *,int) ;
 int stub1 (int ,int ,TYPE_3__*,TYPE_4__*,void**,int const*,int,int,int) ;

__attribute__((used)) static int rtp_parse_packet_internal(RTPDemuxContext *s, AVPacket *pkt,
                                     const uint8_t *buf, int len)
{
    unsigned int ssrc;
    int payload_type, seq, flags = 0;
    int ext, csrc;
    AVStream *st;
    uint32_t timestamp;
    int rv = 0;

    csrc = buf[0] & 0x0f;
    ext = buf[0] & 0x10;
    payload_type = buf[1] & 0x7f;
    if (buf[1] & 0x80)
        flags |= RTP_FLAG_MARKER;
    seq = AV_RB16(buf + 2);
    timestamp = AV_RB32(buf + 4);
    ssrc = AV_RB32(buf + 8);

    s->ssrc = ssrc;


    if (s->payload_type != payload_type)
        return -1;

    st = s->st;

    if (!rtp_valid_packet_in_sequence(&s->statistics, seq)) {
        av_log(s->ic, AV_LOG_ERROR,
               "RTP: PT=%02x: bad cseq %04x expected=%04x\n",
               payload_type, seq, ((s->seq + 1) & 0xffff));
        return -1;
    }

    if (buf[0] & 0x20) {
        int padding = buf[len - 1];
        if (len >= 12 + padding)
            len -= padding;
    }

    s->seq = seq;
    len -= 12;
    buf += 12;

    len -= 4 * csrc;
    buf += 4 * csrc;
    if (len < 0)
        return AVERROR_INVALIDDATA;


    if (ext) {
        if (len < 4)
            return -1;


        ext = (AV_RB16(buf + 2) + 1) << 2;

        if (len < ext)
            return -1;

        len -= ext;
        buf += ext;
    }

    if (s->handler && s->handler->parse_packet) {
        rv = s->handler->parse_packet(s->ic, s->dynamic_protocol_context,
                                      s->st, pkt, &timestamp, buf, len, seq,
                                      flags);
    } else if (st) {
        if ((rv = av_new_packet(pkt, len)) < 0)
            return rv;
        memcpy(pkt->data, buf, len);
        pkt->stream_index = st->index;
    } else {
        return AVERROR(EINVAL);
    }


    finalize_packet(s, pkt, timestamp);

    return rv;
}
