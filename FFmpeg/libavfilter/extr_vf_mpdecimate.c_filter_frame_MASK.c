#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_15__ {int /*<<< orphan*/  time_base; TYPE_7__* dst; } ;
struct TYPE_14__ {int /*<<< orphan*/  pts; } ;
struct TYPE_13__ {scalar_t__ drop_count; TYPE_2__* ref; } ;
typedef  TYPE_1__ DecimateContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_7__*,TYPE_2__*,TYPE_2__*) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFilterLink *inlink, AVFrame *cur)
{
    DecimateContext *decimate = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    int ret;

    if (decimate->ref && FUNC7(inlink->dst, cur, decimate->ref)) {
        decimate->drop_count = FUNC0(1, decimate->drop_count+1);
    } else {
        FUNC3(&decimate->ref);
        decimate->ref = cur;
        decimate->drop_count = FUNC1(-1, decimate->drop_count-1);

        if ((ret = FUNC8(outlink, FUNC2(cur))) < 0)
            return ret;
    }

    FUNC4(inlink->dst, AV_LOG_DEBUG,
           "%s pts:%s pts_time:%s drop_count:%d\n",
           decimate->drop_count > 0 ? "drop" : "keep",
           FUNC5(cur->pts), FUNC6(cur->pts, &inlink->time_base),
           decimate->drop_count);

    if (decimate->drop_count > 0)
        FUNC3(&cur);

    return 0;
}