#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_18__ {int /*<<< orphan*/  pb; } ;
struct TYPE_17__ {size_t stream_index; int /*<<< orphan*/  pts; } ;
struct TYPE_16__ {size_t index; TYPE_1__* codecpar; } ;
struct TYPE_15__ {scalar_t__ audio_pkt_cnt; TYPE_8__* rmctx; int /*<<< orphan*/ * rmst; int /*<<< orphan*/  buffer; } ;
struct TYPE_14__ {scalar_t__ codec_id; } ;
typedef  TYPE_2__ PayloadContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_AAC ; 
 int RTP_FLAG_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_8__*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int,TYPE_4__*,int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_8__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int
FUNC7 (AVFormatContext *ctx, PayloadContext *rdt, AVStream *st,
                  AVPacket *pkt, uint32_t *timestamp,
                  const uint8_t *buf, int len, uint16_t rtp_seq, int flags)
{
    int seq = 1, res;
    AVIOContext pb;

    if (rdt->audio_pkt_cnt == 0) {
        int pos, rmflags;

        FUNC5(&pb, (uint8_t *)buf, len, 0, NULL, NULL, NULL, NULL);
        rmflags = (flags & RTP_FLAG_KEY) ? 2 : 0;
        res = FUNC3 (rdt->rmctx, &pb, st, rdt->rmst[st->index], len, pkt,
                                  &seq, rmflags, *timestamp);
        pos = FUNC2(&pb);
        if (res < 0)
            return res;
        if (res > 0) {
            if (st->codecpar->codec_id == AV_CODEC_ID_AAC) {
                FUNC6 (rdt->buffer, buf + pos, len - pos);
                rdt->rmctx->pb = FUNC0 (rdt->buffer, len - pos, 0,
                                                    NULL, NULL, NULL, NULL);
            }
            goto get_cache;
        }
    } else {
get_cache:
        rdt->audio_pkt_cnt =
            FUNC4 (rdt->rmctx, rdt->rmctx->pb,
                                  st, rdt->rmst[st->index], pkt);
        if (rdt->audio_pkt_cnt == 0 &&
            st->codecpar->codec_id == AV_CODEC_ID_AAC)
            FUNC1(&rdt->rmctx->pb);
    }
    pkt->stream_index = st->index;
    pkt->pts = *timestamp;

    return rdt->audio_pkt_cnt > 0;
}