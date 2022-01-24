#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_22__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct TYPE_38__ {int nb_streams; int flags; TYPE_3__* internal; scalar_t__ use_wallclock_as_timestamps; TYPE_4__** streams; TYPE_2__* iformat; } ;
struct TYPE_37__ {scalar_t__ size; int flags; unsigned int stream_index; void* pts; void* dts; int /*<<< orphan*/ * data; } ;
struct TYPE_31__ {size_t stream_index; } ;
struct TYPE_36__ {TYPE_1__ pkt; } ;
struct TYPE_35__ {scalar_t__ request_probe; scalar_t__ pts_wrap_behavior; int /*<<< orphan*/  time_base; void* cur_dts; void* start_time; void* first_dts; scalar_t__ probe_packets; } ;
struct TYPE_34__ {scalar_t__ raw_packet_buffer_remaining_size; TYPE_22__* raw_packet_buffer_end; TYPE_5__* raw_packet_buffer; } ;
struct TYPE_33__ {int (* read_packet ) (TYPE_7__*,TYPE_6__*) ;} ;
struct TYPE_32__ {TYPE_6__ pkt; } ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVPacketList ;
typedef  TYPE_6__ AVPacket ;
typedef  TYPE_7__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVFMT_FLAG_DISCARD_CORRUPT ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int AV_PKT_FLAG_CORRUPT ; 
 scalar_t__ AV_PTS_WRAP_SUB_OFFSET ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 int /*<<< orphan*/  EAGAIN ; 
 int FFERROR_REDO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__**,TYPE_22__**,TYPE_6__*) ; 
 int FUNC9 (TYPE_5__**,TYPE_22__**,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int FUNC12 (TYPE_7__*,TYPE_4__*,TYPE_6__ const*) ; 
 int FUNC13 (TYPE_7__*,TYPE_6__*) ; 
 scalar_t__ FUNC14 (TYPE_7__*,TYPE_4__*,size_t,TYPE_6__*) ; 
 void* FUNC15 (TYPE_4__*,void*) ; 

int FUNC16(AVFormatContext *s, AVPacket *pkt)
{
    int ret, i, err;
    AVStream *st;

    pkt->data = NULL;
    pkt->size = 0;
    FUNC3(pkt);

    for (;;) {
        AVPacketList *pktl = s->internal->raw_packet_buffer;
        const AVPacket *pkt1;

        if (pktl) {
            st = s->streams[pktl->pkt.stream_index];
            if (s->internal->raw_packet_buffer_remaining_size <= 0)
                if ((err = FUNC12(s, st, NULL)) < 0)
                    return err;
            if (st->request_probe <= 0) {
                FUNC8(&s->internal->raw_packet_buffer,
                                   &s->internal->raw_packet_buffer_end, pkt);
                s->internal->raw_packet_buffer_remaining_size += pkt->size;
                return 0;
            }
        }

        ret = s->iformat->read_packet(s, pkt);
        if (ret < 0) {
            FUNC6(pkt);

            /* Some demuxers return FFERROR_REDO when they consume
               data and discard it (ignored streams, junk, extradata).
               We must re-call the demuxer to get the real packet. */
            if (ret == FFERROR_REDO)
                continue;
            if (!pktl || ret == FUNC0(EAGAIN))
                return ret;
            for (i = 0; i < s->nb_streams; i++) {
                st = s->streams[i];
                if (st->probe_packets || st->request_probe > 0)
                    if ((err = FUNC12(s, st, NULL)) < 0)
                        return err;
                FUNC1(st->request_probe <= 0);
            }
            continue;
        }

        err = FUNC5(pkt);
        if (err < 0) {
            FUNC6(pkt);
            return err;
        }

        if ((s->flags & AVFMT_FLAG_DISCARD_CORRUPT) &&
            (pkt->flags & AV_PKT_FLAG_CORRUPT)) {
            FUNC4(s, AV_LOG_WARNING,
                   "Dropped corrupted packet (stream = %d)\n",
                   pkt->stream_index);
            FUNC6(pkt);
            continue;
        }

        FUNC1(pkt->stream_index < (unsigned)s->nb_streams &&
                   "Invalid stream index.\n");

        st = s->streams[pkt->stream_index];

        if (FUNC14(s, st, pkt->stream_index, pkt) && st->pts_wrap_behavior == AV_PTS_WRAP_SUB_OFFSET) {
            // correct first time stamps to negative values
            if (!FUNC11(st->first_dts))
                st->first_dts = FUNC15(st, st->first_dts);
            if (!FUNC11(st->start_time))
                st->start_time = FUNC15(st, st->start_time);
            if (!FUNC11(st->cur_dts))
                st->cur_dts = FUNC15(st, st->cur_dts);
        }

        pkt->dts = FUNC15(st, pkt->dts);
        pkt->pts = FUNC15(st, pkt->pts);

        FUNC10(s, st);

        /* TODO: audio: time filter; video: frame reordering (pts != dts) */
        if (s->use_wallclock_as_timestamps)
            pkt->dts = pkt->pts = FUNC7(FUNC2(), AV_TIME_BASE_Q, st->time_base);

        if (!pktl && st->request_probe <= 0)
            return ret;

        err = FUNC9(&s->internal->raw_packet_buffer,
                                 &s->internal->raw_packet_buffer_end,
                                 pkt, 0);
        if (err < 0) {
            FUNC6(pkt);
            return err;
        }
        pkt1 = &s->internal->raw_packet_buffer_end->pkt;
        s->internal->raw_packet_buffer_remaining_size -= pkt1->size;

        if ((err = FUNC12(s, st, pkt1)) < 0)
            return err;
    }
}