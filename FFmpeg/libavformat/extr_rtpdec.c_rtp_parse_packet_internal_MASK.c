#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  void* uint32_t ;
struct TYPE_15__ {int /*<<< orphan*/  stream_index; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {int /*<<< orphan*/  index; } ;
struct TYPE_13__ {unsigned int ssrc; int payload_type; int seq; TYPE_3__* st; int /*<<< orphan*/  dynamic_protocol_context; int /*<<< orphan*/  ic; TYPE_1__* handler; int /*<<< orphan*/  statistics; } ;
struct TYPE_12__ {int (* parse_packet ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,TYPE_4__*,void**,int const*,int,int,int) ;} ;
typedef  TYPE_2__ RTPDemuxContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC1 (int const*) ; 
 void* FUNC2 (int const*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int RTP_FLAG_MARKER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_4__*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,TYPE_4__*,void**,int const*,int,int,int) ; 

__attribute__((used)) static int FUNC9(RTPDemuxContext *s, AVPacket *pkt,
                                     const uint8_t *buf, int len)
{
    unsigned int ssrc;
    int payload_type, seq, flags = 0;
    int ext, csrc;
    AVStream *st;
    uint32_t timestamp;
    int rv = 0;

    csrc         = buf[0] & 0x0f;
    ext          = buf[0] & 0x10;
    payload_type = buf[1] & 0x7f;
    if (buf[1] & 0x80)
        flags |= RTP_FLAG_MARKER;
    seq       = FUNC1(buf + 2);
    timestamp = FUNC2(buf + 4);
    ssrc      = FUNC2(buf + 8);
    /* store the ssrc in the RTPDemuxContext */
    s->ssrc = ssrc;

    /* NOTE: we can handle only one payload type */
    if (s->payload_type != payload_type)
        return -1;

    st = s->st;
    // only do something with this if all the rtp checks pass...
    if (!FUNC7(&s->statistics, seq)) {
        FUNC3(s->ic, AV_LOG_ERROR,
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
    len   -= 12;
    buf   += 12;

    len   -= 4 * csrc;
    buf   += 4 * csrc;
    if (len < 0)
        return AVERROR_INVALIDDATA;

    /* RFC 3550 Section 5.3.1 RTP Header Extension handling */
    if (ext) {
        if (len < 4)
            return -1;
        /* calculate the header extension length (stored as number
         * of 32-bit words) */
        ext = (FUNC1(buf + 2) + 1) << 2;

        if (len < ext)
            return -1;
        // skip past RTP header extension
        len -= ext;
        buf += ext;
    }

    if (s->handler && s->handler->parse_packet) {
        rv = s->handler->parse_packet(s->ic, s->dynamic_protocol_context,
                                      s->st, pkt, &timestamp, buf, len, seq,
                                      flags);
    } else if (st) {
        if ((rv = FUNC4(pkt, len)) < 0)
            return rv;
        FUNC6(pkt->data, buf, len);
        pkt->stream_index = st->index;
    } else {
        return FUNC0(EINVAL);
    }

    // now perform timestamp things....
    FUNC5(s, pkt, timestamp);

    return rv;
}