#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int start; int flags; int /*<<< orphan*/  fps; int /*<<< orphan*/  rate; } ;
typedef  TYPE_1__ AVTimecode ;
typedef  int /*<<< orphan*/  AVRational ;

/* Variables and functions */
 int FUNC0 (void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC3(AVTimecode *tc, AVRational rate, int flags, int frame_start, void *log_ctx)
{
    FUNC2(tc, 0, sizeof(*tc));
    tc->start = frame_start;
    tc->flags = flags;
    tc->rate  = rate;
    tc->fps   = FUNC1(rate);
    return FUNC0(log_ctx, tc);
}