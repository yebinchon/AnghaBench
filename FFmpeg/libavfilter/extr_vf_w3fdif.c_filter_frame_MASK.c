#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* prev; TYPE_2__* cur; scalar_t__ deint; TYPE_2__* next; } ;
typedef  TYPE_1__ W3FDIFContext ;
struct TYPE_14__ {int /*<<< orphan*/ * outputs; scalar_t__ is_disabled; TYPE_1__* priv; } ;
struct TYPE_13__ {TYPE_4__* dst; } ;
struct TYPE_12__ {int pts; int /*<<< orphan*/  interlaced_frame; } ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC4 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC5(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext *ctx = inlink->dst;
    W3FDIFContext *s = ctx->priv;
    int ret;

    FUNC2(&s->prev);
    s->prev = s->cur;
    s->cur  = s->next;
    s->next = frame;

    if (!s->cur) {
        s->cur = FUNC1(s->next);
        if (!s->cur)
            return FUNC0(ENOMEM);
    }

    if ((s->deint && !s->cur->interlaced_frame) || ctx->is_disabled) {
        AVFrame *out = FUNC1(s->cur);
        if (!out)
            return FUNC0(ENOMEM);

        FUNC2(&s->prev);
        if (out->pts != AV_NOPTS_VALUE)
            out->pts *= 2;
        return FUNC3(ctx->outputs[0], out);
    }

    if (!s->prev)
        return 0;

    ret = FUNC4(ctx, 0);
    if (ret < 0)
        return ret;

    return FUNC4(ctx, 1);
}