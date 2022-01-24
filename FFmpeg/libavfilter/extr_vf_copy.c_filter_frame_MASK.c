#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_1__* dst; } ;
struct TYPE_16__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_15__ {TYPE_3__** outputs; } ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 int FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *out = FUNC5(outlink, in->width, in->height);
    int ret;

    if (!out) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    ret = FUNC2(out, in);
    if (ret < 0)
        goto fail;
    ret = FUNC1(out, in);
    if (ret < 0)
        goto fail;
    FUNC3(&in);
    return FUNC4(outlink, out);
fail:
    FUNC3(&in);
    FUNC3(&out);
    return ret;
}