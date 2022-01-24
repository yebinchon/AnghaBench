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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_4__ {int status_out; int status_in; int /*<<< orphan*/  current_pts; int /*<<< orphan*/  status_in_pts; int /*<<< orphan*/  fifo; } ;
typedef  TYPE_1__ AVFilterLink ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC2(AVFilterLink *link, int *rstatus, int64_t *rpts)
{
    *rpts = link->current_pts;
    if (FUNC0(&link->fifo))
        return *rstatus = 0;
    if (link->status_out)
        return *rstatus = link->status_out;
    if (!link->status_in)
        return *rstatus = 0;
    *rstatus = link->status_out = link->status_in;
    FUNC1(link, link->status_in_pts);
    *rpts = link->current_pts;
    return 1;
}