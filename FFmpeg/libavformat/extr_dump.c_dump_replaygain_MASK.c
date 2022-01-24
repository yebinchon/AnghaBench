#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size; scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  album_peak; int /*<<< orphan*/  album_gain; int /*<<< orphan*/  track_peak; int /*<<< orphan*/  track_gain; } ;
typedef  TYPE_1__ AVReplayGain ;
typedef  TYPE_2__ AVPacketSideData ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *ctx, AVPacketSideData *sd)
{
    AVReplayGain *rg;

    if (sd->size < sizeof(*rg)) {
        FUNC0(ctx, AV_LOG_ERROR, "invalid data");
        return;
    }
    rg = (AVReplayGain*)sd->data;

    FUNC1(ctx, "track gain", rg->track_gain);
    FUNC2(ctx, "track peak", rg->track_peak);
    FUNC1(ctx, "album gain", rg->album_gain);
    FUNC2(ctx, "album peak", rg->album_peak);
}