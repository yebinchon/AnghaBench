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
struct TYPE_4__ {int status_in; int /*<<< orphan*/  fifo; scalar_t__ frame_blocked_in; scalar_t__ frame_wanted_out; scalar_t__ status_out; } ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_1__ AVFilterLink ;

/* Variables and functions */
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(AVFilterLink *link, int status)
{
    if (link->status_out)
        return;
    link->frame_wanted_out = 0;
    link->frame_blocked_in = 0;
    FUNC1(link, status, AV_NOPTS_VALUE);
    while (FUNC2(&link->fifo)) {
           AVFrame *frame = FUNC3(&link->fifo);
           FUNC0(&frame);
    }
    if (!link->status_in)
        link->status_in = status;
}