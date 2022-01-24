#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  fifo; scalar_t__ status_in; } ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_1__ AVFilterLink ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned int) ; 
 int FUNC5 (TYPE_1__*,unsigned int,unsigned int,int /*<<< orphan*/ **) ; 

int FUNC6(AVFilterLink *link, unsigned min, unsigned max,
                            AVFrame **rframe)
{
    AVFrame *frame;
    int ret;

    FUNC1(min);
    *rframe = NULL;
    if (!FUNC4(link, min))
        return 0;
    if (link->status_in)
        min = FUNC0(min, FUNC3(&link->fifo));
    ret = FUNC5(link, min, max, &frame);
    if (ret < 0)
        return ret;
    FUNC2(link, frame);
    *rframe = frame;
    return 1;
}