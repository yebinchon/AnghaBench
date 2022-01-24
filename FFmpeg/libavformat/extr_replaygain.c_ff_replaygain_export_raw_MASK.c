#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_2__ {void* album_peak; scalar_t__ album_gain; void* track_peak; scalar_t__ track_gain; } ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  TYPE_1__ AVReplayGain ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PKT_DATA_REPLAYGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ INT32_MIN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC2(AVStream *st, int32_t tg, uint32_t tp,
                             int32_t ag, uint32_t ap)
{
    AVReplayGain *replaygain;

    if (tg == INT32_MIN && ag == INT32_MIN)
        return 0;

    replaygain = (AVReplayGain*)FUNC1(st, AV_PKT_DATA_REPLAYGAIN,
                                                        sizeof(*replaygain));
    if (!replaygain)
        return FUNC0(ENOMEM);

    replaygain->track_gain = tg;
    replaygain->track_peak = tp;
    replaygain->album_gain = ag;
    replaygain->album_peak = ap;

    return 0;
}