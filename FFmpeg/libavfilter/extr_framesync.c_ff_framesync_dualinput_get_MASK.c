#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ is_disabled; TYPE_1__** outputs; } ;
struct TYPE_14__ {int /*<<< orphan*/  pts; } ;
struct TYPE_13__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  pts; TYPE_4__* parent; } ;
struct TYPE_12__ {int /*<<< orphan*/  time_base; } ;
typedef  TYPE_2__ FFFrameSync ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int,TYPE_3__**,int) ; 

int FUNC4(FFFrameSync *fs, AVFrame **f0, AVFrame **f1)
{
    AVFilterContext *ctx = fs->parent;
    AVFrame *mainpic = NULL, *secondpic = NULL;
    int ret;

    if ((ret = FUNC3(fs, 0, &mainpic,   1)) < 0 ||
        (ret = FUNC3(fs, 1, &secondpic, 0)) < 0) {
        FUNC1(&mainpic);
        return ret;
    }
    FUNC0(mainpic);
    mainpic->pts = FUNC2(fs->pts, fs->time_base, ctx->outputs[0]->time_base);
    if (ctx->is_disabled)
        secondpic = NULL;
    *f0 = mainpic;
    *f1 = secondpic;
    return 0;
}