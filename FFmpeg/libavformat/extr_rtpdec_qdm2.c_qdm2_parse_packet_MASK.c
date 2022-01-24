#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_14__ {TYPE_1__* codecpar; } ;
struct TYPE_13__ {scalar_t__ n_pkts; scalar_t__* len; scalar_t__ subpkts_per_block; scalar_t__ cache; int /*<<< orphan*/  timestamp; } ;
struct TYPE_12__ {scalar_t__ codec_id; } ;
typedef  TYPE_2__ PayloadContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AV_CODEC_ID_NONE ; 
 scalar_t__ AV_CODEC_ID_QDM2 ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  RTP_NOTS_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_2__*,TYPE_3__*,int const*,int const*) ; 
 int FUNC4 (TYPE_2__*,TYPE_3__*,int const*,int const*) ; 
 int FUNC5 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, PayloadContext *qdm,
                             AVStream *st, AVPacket *pkt,
                             uint32_t *timestamp,
                             const uint8_t *buf, int len, uint16_t seq,
                             int flags)
{
    int res = AVERROR_INVALIDDATA, n;
    const uint8_t *end = buf + len, *p = buf;

    if (len > 0) {
        if (len < 2)
            return AVERROR_INVALIDDATA;

        /* configuration block */
        if (*p == 0xff) {
            if (qdm->n_pkts > 0) {
                FUNC1(s, AV_LOG_WARNING,
                       "Out of sequence config - dropping queue\n");
                qdm->n_pkts = 0;
                FUNC2(qdm->len, 0, sizeof(qdm->len));
            }

            if ((res = FUNC3(qdm, st, ++p, end)) < 0)
                return res;
            p += res;

            /* We set codec_id to AV_CODEC_ID_NONE initially to
             * delay decoder initialization since extradata is
             * carried within the RTP stream, not SDP. Here,
             * by setting codec_id to AV_CODEC_ID_QDM2, we are signalling
             * to the decoder that it is OK to initialize. */
            st->codecpar->codec_id = AV_CODEC_ID_QDM2;
        }
        if (st->codecpar->codec_id == AV_CODEC_ID_NONE)
            return FUNC0(EAGAIN);

        /* subpackets */
        while (end - p >= 4) {
            if ((res = FUNC4(qdm, st, p, end)) < 0)
                return res;
            p += res;
        }

        qdm->timestamp = *timestamp;
        if (++qdm->n_pkts < qdm->subpkts_per_block)
            return FUNC0(EAGAIN);
        qdm->cache = 0;
        for (n = 0; n < 0x80; n++)
            if (qdm->len[n] > 0)
                qdm->cache++;
    }

    /* output the subpackets into freshly created superblock structures */
    if (!qdm->cache || (res = FUNC5(qdm, st, pkt)) < 0)
        return res;
    if (--qdm->cache == 0)
        qdm->n_pkts = 0;

    *timestamp = qdm->timestamp;
    qdm->timestamp = RTP_NOTS_VALUE;

    return (qdm->cache > 0) ? 1 : 0;
}