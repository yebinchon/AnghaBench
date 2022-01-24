#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_3__ {int status_in; int /*<<< orphan*/  dst; scalar_t__ frame_blocked_in; scalar_t__ frame_wanted_out; int /*<<< orphan*/  status_in_pts; } ;
typedef  TYPE_1__ AVFilterLink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(AVFilterLink *link, int status, int64_t pts)
{
    if (link->status_in == status)
        return;
    FUNC0(!link->status_in);
    link->status_in = status;
    link->status_in_pts = pts;
    link->frame_wanted_out = 0;
    link->frame_blocked_in = 0;
    FUNC2(link->dst);
    FUNC1(link->dst, 200);
}