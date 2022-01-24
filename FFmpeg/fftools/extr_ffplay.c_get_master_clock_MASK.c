#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  extclk; int /*<<< orphan*/  audclk; int /*<<< orphan*/  vidclk; } ;
typedef  TYPE_1__ VideoState ;

/* Variables and functions */
#define  AV_SYNC_AUDIO_MASTER 129 
#define  AV_SYNC_VIDEO_MASTER 128 
 double FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static double FUNC2(VideoState *is)
{
    double val;

    switch (FUNC1(is)) {
        case AV_SYNC_VIDEO_MASTER:
            val = FUNC0(&is->vidclk);
            break;
        case AV_SYNC_AUDIO_MASTER:
            val = FUNC0(&is->audclk);
            break;
        default:
            val = FUNC0(&is->extclk);
            break;
    }
    return val;
}