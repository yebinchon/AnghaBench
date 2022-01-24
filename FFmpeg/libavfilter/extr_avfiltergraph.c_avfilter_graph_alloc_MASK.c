#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* internal; int /*<<< orphan*/ * av_class; } ;
struct TYPE_6__ {int /*<<< orphan*/  frame_queues; } ;
typedef  TYPE_2__ AVFilterGraph ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  filtergraph_class ; 

AVFilterGraph *FUNC4(void)
{
    AVFilterGraph *ret = FUNC1(sizeof(*ret));
    if (!ret)
        return NULL;

    ret->internal = FUNC1(sizeof(*ret->internal));
    if (!ret->internal) {
        FUNC0(&ret);
        return NULL;
    }

    ret->av_class = &filtergraph_class;
    FUNC2(ret);
    FUNC3(&ret->internal->frame_queues);

    return ret;
}