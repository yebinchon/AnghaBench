#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ nb_packets; } ;
struct TYPE_15__ {scalar_t__ serial; } ;
struct TYPE_19__ {scalar_t__ pkt_serial; } ;
struct TYPE_17__ {double frame_last_filter_delay; int /*<<< orphan*/  frame_drops_early; TYPE_2__ videoq; TYPE_1__ vidclk; TYPE_9__ viddec; TYPE_11__* video_st; int /*<<< orphan*/  ic; } ;
typedef  TYPE_3__ VideoState ;
struct TYPE_18__ {double pts; int /*<<< orphan*/  sample_aspect_ratio; } ;
struct TYPE_14__ {int /*<<< orphan*/  time_base; } ;
typedef  TYPE_4__ AVFrame ;

/* Variables and functions */
 double AV_NOPTS_VALUE ; 
 scalar_t__ AV_NOSYNC_THRESHOLD ; 
 scalar_t__ AV_SYNC_VIDEO_MASTER ; 
 double NAN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_11__*,TYPE_4__*) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_9__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (double) ; 
 scalar_t__ framedrop ; 
 double FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (double) ; 

__attribute__((used)) static int FUNC8(VideoState *is, AVFrame *frame)
{
    int got_picture;

    if ((got_picture = FUNC3(&is->viddec, frame, NULL)) < 0)
        return -1;

    if (got_picture) {
        double dpts = NAN;

        if (frame->pts != AV_NOPTS_VALUE)
            dpts = FUNC2(is->video_st->time_base) * frame->pts;

        frame->sample_aspect_ratio = FUNC1(is->ic, is->video_st, frame);

        if (framedrop>0 || (framedrop && FUNC6(is) != AV_SYNC_VIDEO_MASTER)) {
            if (frame->pts != AV_NOPTS_VALUE) {
                double diff = dpts - FUNC5(is);
                if (!FUNC7(diff) && FUNC4(diff) < AV_NOSYNC_THRESHOLD &&
                    diff - is->frame_last_filter_delay < 0 &&
                    is->viddec.pkt_serial == is->vidclk.serial &&
                    is->videoq.nb_packets) {
                    is->frame_drops_early++;
                    FUNC0(frame);
                    got_picture = 0;
                }
            }
        }
    }

    return got_picture;
}