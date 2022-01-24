#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_26__ {int /*<<< orphan*/  (* adjust ) (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ;} ;
struct TYPE_25__ {TYPE_1__* priv; TYPE_4__** outputs; } ;
struct TYPE_24__ {int w; int h; int frame_count_out; int /*<<< orphan*/  time_base; int /*<<< orphan*/  format; TYPE_5__* dst; } ;
struct TYPE_23__ {int pkt_pos; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; int /*<<< orphan*/  pts; } ;
struct TYPE_22__ {int nb_components; int /*<<< orphan*/  log2_chroma_h; int /*<<< orphan*/  log2_chroma_w; } ;
struct TYPE_21__ {int* var_values; scalar_t__ eval_mode; TYPE_6__* param; } ;
typedef  TYPE_1__ EQContext ;
typedef  TYPE_2__ AVPixFmtDescriptor ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ EVAL_MODE_FRAME ; 
 int NAN ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t VAR_N ; 
 size_t VAR_POS ; 
 size_t VAR_T ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC8 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC14(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    EQContext *eq = ctx->priv;
    AVFrame *out;
    int64_t pos = in->pkt_pos;
    const AVPixFmtDescriptor *desc;
    int i;

    out = FUNC8(outlink, inlink->w, inlink->h);
    if (!out) {
        FUNC4(&in);
        return FUNC0(ENOMEM);
    }

    FUNC3(out, in);
    desc = FUNC6(inlink->format);

    eq->var_values[VAR_N]   = inlink->frame_count_out;
    eq->var_values[VAR_POS] = pos == -1 ? NAN : pos;
    eq->var_values[VAR_T]   = FUNC2(in->pts, inlink->time_base);

    if (eq->eval_mode == EVAL_MODE_FRAME) {
        FUNC11(eq);
        FUNC10(eq);
        FUNC9(eq);
        FUNC12(eq);
    }

    for (i = 0; i < desc->nb_components; i++) {
        int w = inlink->w;
        int h = inlink->h;

        if (i == 1 || i == 2) {
            w = FUNC1(w, desc->log2_chroma_w);
            h = FUNC1(h, desc->log2_chroma_h);
        }

        if (eq->param[i].adjust)
            eq->param[i].adjust(&eq->param[i], out->data[i], out->linesize[i],
                                 in->data[i], in->linesize[i], w, h);
        else
            FUNC5(out->data[i], out->linesize[i],
                                in->data[i], in->linesize[i], w, h);
    }

    FUNC4(&in);
    return FUNC7(outlink, out);
}