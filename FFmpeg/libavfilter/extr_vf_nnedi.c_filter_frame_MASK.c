#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ is_disabled; TYPE_1__* priv; TYPE_3__** outputs; } ;
struct TYPE_15__ {TYPE_4__* dst; } ;
struct TYPE_14__ {scalar_t__ pts; scalar_t__ interlaced_frame; } ;
struct TYPE_13__ {int field; int cur_pts; TYPE_2__* dst; TYPE_2__* src; TYPE_2__* second; scalar_t__ deint; scalar_t__ eof; } ;
typedef  TYPE_1__ NNEDIContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC4 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC5(AVFilterLink *inlink, AVFrame *src)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    NNEDIContext *s = ctx->priv;
    int ret;

    if ((s->field > 1 ||
         s->field == -2) && !s->second) {
        goto second;
    } else if (s->field > 1 ||
               s->field == -2) {
        AVFrame *dst;

        s->src = s->second;
        ret = FUNC4(ctx, 1);
        if (ret < 0) {
            FUNC2(&s->dst);
            FUNC2(&s->second);
            s->src = NULL;
            return ret;
        }
        dst = s->dst;

        if (src->pts != AV_NOPTS_VALUE &&
            dst->pts != AV_NOPTS_VALUE)
            dst->pts += src->pts;
        else
            dst->pts = AV_NOPTS_VALUE;

        ret = FUNC3(outlink, dst);
        if (ret < 0)
            return ret;
        if (s->eof)
            return 0;
        s->cur_pts = s->second->pts;
        FUNC2(&s->second);
second:
        if ((s->deint && src->interlaced_frame &&
             !ctx->is_disabled) ||
            (!s->deint && !ctx->is_disabled)) {
            s->second = src;
        }
    }

    if ((s->deint && !src->interlaced_frame) || ctx->is_disabled) {
        AVFrame *dst = FUNC1(src);
        if (!dst) {
            FUNC2(&src);
            FUNC2(&s->second);
            return FUNC0(ENOMEM);
        }

        if (s->field > 1 || s->field == -2) {
            FUNC2(&s->second);
            if ((s->deint && src->interlaced_frame) ||
                (!s->deint))
                s->second = src;
        } else {
            FUNC2(&src);
        }
        if (dst->pts != AV_NOPTS_VALUE)
            dst->pts *= 2;
        return FUNC3(outlink, dst);
    }

    s->src = src;
    ret = FUNC4(ctx, 0);
    if (ret < 0) {
        FUNC2(&s->dst);
        FUNC2(&s->src);
        FUNC2(&s->second);
        return ret;
    }

    if (src->pts != AV_NOPTS_VALUE)
        s->dst->pts = src->pts * 2;
    if (s->field <= 1 && s->field > -2) {
        FUNC2(&src);
        s->src = NULL;
    }

    return FUNC3(outlink, s->dst);
}