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
typedef  scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ age_index; scalar_t__ graph; int /*<<< orphan*/  time_base; int /*<<< orphan*/  current_pts_us; scalar_t__ current_pts; } ;
typedef  TYPE_1__ AVFilterLink ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 

void FUNC2(AVFilterLink *link, int64_t pts)
{
    if (pts == AV_NOPTS_VALUE)
        return;
    link->current_pts = pts;
    link->current_pts_us = FUNC0(pts, link->time_base, AV_TIME_BASE_Q);
    /* TODO use duration */
    if (link->graph && link->age_index >= 0)
        FUNC1(link->graph, link);
}