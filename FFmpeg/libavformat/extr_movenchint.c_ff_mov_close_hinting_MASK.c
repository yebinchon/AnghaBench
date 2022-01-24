#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ pb; } ;
struct TYPE_6__ {int /*<<< orphan*/  sample_queue; int /*<<< orphan*/  par; TYPE_2__* rtp_ctx; } ;
typedef  TYPE_1__ MOVTrack ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(MOVTrack *track)
{
    AVFormatContext *rtp_ctx = track->rtp_ctx;

    FUNC1(&track->par);
    FUNC4(&track->sample_queue);
    if (!rtp_ctx)
        return;
    if (rtp_ctx->pb) {
        FUNC0(rtp_ctx);
        FUNC3(&rtp_ctx->pb);
    }
    FUNC2(rtp_ctx);
}