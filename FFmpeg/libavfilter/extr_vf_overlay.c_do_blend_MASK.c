#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_19__ {TYPE_5__* src; TYPE_5__* dst; } ;
typedef  TYPE_2__ ThreadData ;
struct TYPE_24__ {int /*<<< orphan*/ * outputs; TYPE_1__* internal; TYPE_6__** inputs; TYPE_3__* priv; } ;
struct TYPE_23__ {int frame_count_out; int /*<<< orphan*/  time_base; } ;
struct TYPE_22__ {int pkt_pos; int pts; scalar_t__ width; scalar_t__ height; } ;
struct TYPE_21__ {TYPE_7__* parent; } ;
struct TYPE_20__ {scalar_t__ eval_mode; int* var_values; scalar_t__ x; scalar_t__ y; int /*<<< orphan*/  blend_slice; } ;
struct TYPE_18__ {int /*<<< orphan*/  (* execute ) (TYPE_7__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ OverlayContext ;
typedef  TYPE_4__ FFFrameSync ;
typedef  TYPE_5__ AVFrame ;
typedef  TYPE_6__ AVFilterLink ;
typedef  TYPE_7__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int AV_NOPTS_VALUE ; 
 scalar_t__ EVAL_MODE_FRAME ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int NAN ; 
 size_t VAR_MAIN_H ; 
 size_t VAR_MAIN_W ; 
 size_t VAR_MH ; 
 size_t VAR_MW ; 
 size_t VAR_N ; 
 size_t VAR_OH ; 
 size_t VAR_OVERLAY_H ; 
 size_t VAR_OVERLAY_W ; 
 size_t VAR_OW ; 
 size_t VAR_POS ; 
 size_t VAR_T ; 
 size_t VAR_X ; 
 size_t VAR_Y ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC7 (TYPE_7__*) ; 
 int FUNC8 (TYPE_4__*,TYPE_5__**,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    AVFrame *mainpic, *second;
    OverlayContext *s = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    int ret;

    ret = FUNC8(fs, &mainpic, &second);
    if (ret < 0)
        return ret;
    if (!second)
        return FUNC6(ctx->outputs[0], mainpic);

    if (s->eval_mode == EVAL_MODE_FRAME) {
        int64_t pos = mainpic->pkt_pos;

        s->var_values[VAR_N] = inlink->frame_count_out;
        s->var_values[VAR_T] = mainpic->pts == AV_NOPTS_VALUE ?
            NAN : mainpic->pts * FUNC4(inlink->time_base);
        s->var_values[VAR_POS] = pos == -1 ? NAN : pos;

        s->var_values[VAR_OVERLAY_W] = s->var_values[VAR_OW] = second->width;
        s->var_values[VAR_OVERLAY_H] = s->var_values[VAR_OH] = second->height;
        s->var_values[VAR_MAIN_W   ] = s->var_values[VAR_MW] = mainpic->width;
        s->var_values[VAR_MAIN_H   ] = s->var_values[VAR_MH] = mainpic->height;

        FUNC5(ctx);
        FUNC3(ctx, AV_LOG_DEBUG, "n:%f t:%f pos:%f x:%f xi:%d y:%f yi:%d\n",
               s->var_values[VAR_N], s->var_values[VAR_T], s->var_values[VAR_POS],
               s->var_values[VAR_X], s->x,
               s->var_values[VAR_Y], s->y);
    }

    if (s->x < mainpic->width  && s->x + second->width  >= 0 &&
        s->y < mainpic->height && s->y + second->height >= 0) {
        ThreadData td;

        td.dst = mainpic;
        td.src = second;
        ctx->internal->execute(ctx, s->blend_slice, &td, NULL, FUNC1(FUNC0(1, FUNC2(s->y + second->height, FUNC1(second->height, mainpic->height), mainpic->height - s->y)),
                                                                     FUNC7(ctx)));
    }
    return FUNC6(ctx->outputs[0], mainpic);
}