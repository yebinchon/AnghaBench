#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {double last_updated; int paused; int /*<<< orphan*/  serial; } ;
struct TYPE_6__ {int paused; } ;
struct TYPE_7__ {int paused; scalar_t__ read_pause_return; TYPE_4__ extclk; TYPE_4__ vidclk; TYPE_1__ audclk; int /*<<< orphan*/  frame_timer; } ;
typedef  TYPE_2__ VideoState ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSYS ; 
 double FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(VideoState *is)
{
    if (is->paused) {
        is->frame_timer += FUNC1() / 1000000.0 - is->vidclk.last_updated;
        if (is->read_pause_return != FUNC0(ENOSYS)) {
            is->vidclk.paused = 0;
        }
        FUNC3(&is->vidclk, FUNC2(&is->vidclk), is->vidclk.serial);
    }
    FUNC3(&is->extclk, FUNC2(&is->extclk), is->extclk.serial);
    is->paused = is->audclk.paused = is->vidclk.paused = is->extclk.paused = !is->paused;
}