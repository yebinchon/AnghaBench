#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int status_out; int frame_wanted_out; int /*<<< orphan*/  src; int /*<<< orphan*/  status_in_pts; scalar_t__ status_in; TYPE_2__* dst; int /*<<< orphan*/  fifo; } ;
struct TYPE_8__ {int ready; TYPE_1__* filter; } ;
struct TYPE_7__ {int /*<<< orphan*/  activate; } ;
typedef  TYPE_3__ AVFilterLink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  request_frame ; 

int FUNC6(AVFilterLink *link)
{
    FUNC0(NULL, request_frame); FUNC5(NULL, link, 1);

    FUNC1(!link->dst->filter->activate);
    if (link->status_out)
        return link->status_out;
    if (link->status_in) {
        if (FUNC4(&link->fifo)) {
            FUNC1(!link->frame_wanted_out);
            FUNC1(link->dst->ready >= 300);
            return 0;
        } else {
            /* Acknowledge status change. Filters using ff_request_frame() will
               handle the change automatically. Filters can also check the
               status directly but none do yet. */
            FUNC2(link, link->status_in, link->status_in_pts);
            return link->status_out;
        }
    }
    link->frame_wanted_out = 1;
    FUNC3(link->src, 100);
    return 0;
}