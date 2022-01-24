#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_8__ {int /*<<< orphan*/  codec_id; scalar_t__ extradata; scalar_t__ extradata_size; } ;
struct TYPE_7__ {int /*<<< orphan*/  index; TYPE_5__* codecpar; } ;
struct TYPE_6__ {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  pktbuf; } ;
typedef  TYPE_1__ PayloadContext ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_CODEC_ID_SVQ3 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int const*,int) ; 
 scalar_t__ FUNC5 (TYPE_5__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,...) ; 

__attribute__((used)) static int FUNC9 (AVFormatContext *s, PayloadContext *sv,
                              AVStream *st, AVPacket *pkt,
                              uint32_t *timestamp,
                              const uint8_t *buf, int len, uint16_t seq,
                              int flags)
{
    int config_packet, start_packet, end_packet;

    if (len < 2)
        return AVERROR_INVALIDDATA;

    config_packet = buf[0] & 0x40;
    start_packet  = buf[0] & 0x20;
    end_packet    = buf[0] & 0x10;
    buf += 2;     // ignore buf[1]
    len -= 2;

    if (config_packet) {

        FUNC2(&st->codecpar->extradata);
        st->codecpar->extradata_size = 0;

        if (len < 2 || FUNC5(st->codecpar, len + 8))
            return AVERROR_INVALIDDATA;

        FUNC8(st->codecpar->extradata, "SEQH", 4);
        FUNC1(st->codecpar->extradata + 4, len);
        FUNC8(st->codecpar->extradata + 8, buf, len);

        /* We set codec_id to AV_CODEC_ID_NONE initially to
         * delay decoder initialization since extradata is
         * carried within the RTP stream, not SDP. Here,
         * by setting codec_id to AV_CODEC_ID_SVQ3, we are signalling
         * to the decoder that it is OK to initialize. */
        st->codecpar->codec_id = AV_CODEC_ID_SVQ3;

        return FUNC0(EAGAIN);
    }

    if (start_packet) {
        int res;

        FUNC7(&sv->pktbuf);
        if ((res = FUNC3(&sv->pktbuf)) < 0)
            return res;
        sv->timestamp   = *timestamp;
    }

    if (!sv->pktbuf)
        return AVERROR_INVALIDDATA;

    FUNC4(sv->pktbuf, buf, len);

    if (end_packet) {
        int ret = FUNC6(pkt, &sv->pktbuf, st->index);
        if (ret < 0)
            return ret;

        *timestamp        = sv->timestamp;
        return 0;
    }

    return FUNC0(EAGAIN);
}