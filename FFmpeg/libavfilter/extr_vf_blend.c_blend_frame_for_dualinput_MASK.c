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
struct TYPE_7__ {int /*<<< orphan*/ * outputs; } ;
struct TYPE_6__ {TYPE_2__* parent; } ;
typedef  TYPE_1__ FFFrameSync ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC3(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    AVFrame *top_buf, *bottom_buf, *dst_buf;
    int ret;

    ret = FUNC2(fs, &top_buf, &bottom_buf);
    if (ret < 0)
        return ret;
    if (!bottom_buf)
        return FUNC1(ctx->outputs[0], top_buf);
    dst_buf = FUNC0(ctx, top_buf, bottom_buf);
    return FUNC1(ctx->outputs[0], dst_buf);
}