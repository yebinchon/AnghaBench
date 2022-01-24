#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int frame_count_out; TYPE_1__* dst; } ;
struct TYPE_6__ {int frame_step; } ;
struct TYPE_5__ {int /*<<< orphan*/ * outputs; TYPE_2__* priv; } ;
typedef  TYPE_2__ FrameStepContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVFilterLink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(AVFilterLink *inlink, AVFrame *ref)
{
    FrameStepContext *framestep = inlink->dst->priv;

    if (!(inlink->frame_count_out % framestep->frame_step)) {
        return FUNC1(inlink->dst->outputs[0], ref);
    } else {
        FUNC0(&ref);
        return 0;
    }
}