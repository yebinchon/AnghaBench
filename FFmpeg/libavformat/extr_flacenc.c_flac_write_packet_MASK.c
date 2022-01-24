#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct AVFormatContext {TYPE_2__** streams; TYPE_1__* priv_data; } ;
struct TYPE_10__ {scalar_t__ stream_index; } ;
struct TYPE_9__ {int disposition; int nb_frames; int /*<<< orphan*/  priv_data; } ;
struct TYPE_8__ {scalar_t__ audio_stream_idx; scalar_t__ waiting_pics; int /*<<< orphan*/  queue_end; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ FlacMuxerContext ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVPacket ;

/* Variables and functions */
 int AV_DISPOSITION_ATTACHED_PIC ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FF_PACKETLIST_FLAG_REF_PACKET ; 
 int /*<<< orphan*/  FUNC0 (struct AVFormatContext*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct AVFormatContext*) ; 
 int FUNC4 (struct AVFormatContext*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(struct AVFormatContext *s, AVPacket *pkt)
{
    FlacMuxerContext *c = s->priv_data;
    int ret;

    if (pkt->stream_index == c->audio_stream_idx) {
        if (c->waiting_pics) {
            /* buffer audio packets until we get all the pictures */
            ret = FUNC2(&c->queue, &c->queue_end, pkt, FF_PACKETLIST_FLAG_REF_PACKET);
            if (ret < 0) {
                FUNC0(s, AV_LOG_ERROR, "Out of memory in packet queue; skipping attached pictures\n");
                c->waiting_pics = 0;
                ret = FUNC3(s);
                if (ret < 0)
                    return ret;
                return FUNC4(s, pkt);
            }
        } else
            return FUNC4(s, pkt);
    } else {
        AVStream *st = s->streams[pkt->stream_index];

        if (!c->waiting_pics ||
            !(st->disposition & AV_DISPOSITION_ATTACHED_PIC))
            return 0;

        /* warn only once for each stream */
        if (st->nb_frames == 1) {
            FUNC0(s, AV_LOG_WARNING, "Got more than one picture in stream %d,"
                   " ignoring.\n", pkt->stream_index);
        }
        if (st->nb_frames >= 1)
            return 0;

        st->priv_data = FUNC1(pkt);
        if (!st->priv_data)
            FUNC0(s, AV_LOG_ERROR, "Out of memory queueing an attached picture; skipping\n");
        c->waiting_pics--;

        /* flush the buffered audio packets */
        if (!c->waiting_pics &&
            (ret = FUNC3(s)) < 0)
            return ret;
    }

    return 0;
}