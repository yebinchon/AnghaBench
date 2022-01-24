#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_23__ {int flags; TYPE_2__* iformat; TYPE_3__** streams; TYPE_1__* internal; } ;
struct TYPE_22__ {scalar_t__ dts; size_t stream_index; scalar_t__ pts; scalar_t__ duration; int flags; int /*<<< orphan*/  pos; } ;
struct TYPE_21__ {struct TYPE_21__* next; TYPE_5__ pkt; } ;
struct TYPE_20__ {int pts_wrap_bits; scalar_t__ discard; int /*<<< orphan*/  index; } ;
struct TYPE_19__ {int flags; } ;
struct TYPE_18__ {int /*<<< orphan*/  packet_buffer_end; TYPE_4__* packet_buffer; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacketList ;
typedef  TYPE_5__ AVPacket ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVDISCARD_ALL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVFMT_FLAG_GENPTS ; 
 int AVFMT_GENERIC_INDEX ; 
 int /*<<< orphan*/  AVINDEX_KEYFRAME ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ RELATIVE_TS_BASE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int FUNC5 (TYPE_4__**,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int FUNC6 (TYPE_4__**,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int FUNC9 (TYPE_6__*,TYPE_5__*) ; 

int FUNC10(AVFormatContext *s, AVPacket *pkt)
{
    const int genpts = s->flags & AVFMT_FLAG_GENPTS;
    int eof = 0;
    int ret;
    AVStream *st;

    if (!genpts) {
        ret = s->internal->packet_buffer
              ? FUNC5(&s->internal->packet_buffer,
                                        &s->internal->packet_buffer_end, pkt)
              : FUNC9(s, pkt);
        if (ret < 0)
            return ret;
        goto return_packet;
    }

    for (;;) {
        AVPacketList *pktl = s->internal->packet_buffer;

        if (pktl) {
            AVPacket *next_pkt = &pktl->pkt;

            if (next_pkt->dts != AV_NOPTS_VALUE) {
                int wrap_bits = s->streams[next_pkt->stream_index]->pts_wrap_bits;
                // last dts seen for this stream. if any of packets following
                // current one had no dts, we will set this to AV_NOPTS_VALUE.
                int64_t last_dts = next_pkt->dts;
                FUNC2(wrap_bits <= 64);
                while (pktl && next_pkt->pts == AV_NOPTS_VALUE) {
                    if (pktl->pkt.stream_index == next_pkt->stream_index &&
                        FUNC3(next_pkt->dts, pktl->pkt.dts, 2ULL << (wrap_bits - 1)) < 0) {
                        if (FUNC3(pktl->pkt.pts, pktl->pkt.dts, 2ULL << (wrap_bits - 1))) {
                            // not B-frame
                            next_pkt->pts = pktl->pkt.dts;
                        }
                        if (last_dts != AV_NOPTS_VALUE) {
                            // Once last dts was set to AV_NOPTS_VALUE, we don't change it.
                            last_dts = pktl->pkt.dts;
                        }
                    }
                    pktl = pktl->next;
                }
                if (eof && next_pkt->pts == AV_NOPTS_VALUE && last_dts != AV_NOPTS_VALUE) {
                    // Fixing the last reference frame had none pts issue (For MXF etc).
                    // We only do this when
                    // 1. eof.
                    // 2. we are not able to resolve a pts value for current packet.
                    // 3. the packets for this stream at the end of the files had valid dts.
                    next_pkt->pts = last_dts + next_pkt->duration;
                }
                pktl = s->internal->packet_buffer;
            }

            /* read packet from packet buffer, if there is data */
            st = s->streams[next_pkt->stream_index];
            if (!(next_pkt->pts == AV_NOPTS_VALUE && st->discard < AVDISCARD_ALL &&
                  next_pkt->dts != AV_NOPTS_VALUE && !eof)) {
                ret = FUNC5(&s->internal->packet_buffer,
                                               &s->internal->packet_buffer_end, pkt);
                goto return_packet;
            }
        }

        ret = FUNC9(s, pkt);
        if (ret < 0) {
            if (pktl && ret != FUNC0(EAGAIN)) {
                eof = 1;
                continue;
            } else
                return ret;
        }

        ret = FUNC6(&s->internal->packet_buffer,
                                 &s->internal->packet_buffer_end,
                                 pkt, 0);
        if (ret < 0) {
            FUNC4(pkt);
            return ret;
        }
    }

return_packet:

    st = s->streams[pkt->stream_index];
    if ((s->iformat->flags & AVFMT_GENERIC_INDEX) && pkt->flags & AV_PKT_FLAG_KEY) {
        FUNC7(s, st->index);
        FUNC1(st, pkt->pos, pkt->dts, 0, 0, AVINDEX_KEYFRAME);
    }

    if (FUNC8(pkt->dts))
        pkt->dts -= RELATIVE_TS_BASE;
    if (FUNC8(pkt->pts))
        pkt->pts -= RELATIVE_TS_BASE;

    return ret;
}