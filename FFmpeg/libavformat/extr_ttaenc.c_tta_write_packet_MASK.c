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
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {scalar_t__ duration; int /*<<< orphan*/  size; } ;
struct TYPE_8__ {scalar_t__ frame_size; scalar_t__ last_frame; int /*<<< orphan*/  nb_samples; int /*<<< orphan*/  seek_table; int /*<<< orphan*/  queue_end; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ TTAMuxContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FF_PACKETLIST_FLAG_REF_PACKET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, AVPacket *pkt)
{
    TTAMuxContext *tta = s->priv_data;
    int ret;

    ret = FUNC2(&tta->queue, &tta->queue_end, pkt,
                             FF_PACKETLIST_FLAG_REF_PACKET);
    if (ret < 0) {
        return ret;
    }

    FUNC1(tta->seek_table, pkt->size);
    tta->nb_samples += pkt->duration;

    if (tta->frame_size != pkt->duration) {
        if (tta->last_frame) {
            /* Two frames with a different duration than the default frame
               size means the TTA stream comes from a faulty container, and
               there's no way the last frame duration will be correct. */
            FUNC0(s, AV_LOG_ERROR, "Invalid frame durations\n");

            return AVERROR_INVALIDDATA;
        }
        /* First frame with a different duration than the default frame size.
           Assume it's the last frame in the stream and continue. */
        tta->last_frame++;
    }

    return 0;
}