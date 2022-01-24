#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_4__** inputs; TYPE_2__* priv; } ;
struct TYPE_12__ {int w; int h; int /*<<< orphan*/  format; TYPE_5__* src; } ;
struct TYPE_11__ {TYPE_1__* comp; int /*<<< orphan*/  log2_chroma_h; int /*<<< orphan*/  log2_chroma_w; } ;
struct TYPE_10__ {int depth; int chromaw; int chromah; int fs; int cfs; int nb_jobs; void* frame_hue; void* frame_sat; void* jobs_rets; int /*<<< orphan*/  vsub; int /*<<< orphan*/  hsub; void* histsat; void* histv; void* histu; void* histy; } ;
struct TYPE_9__ {int depth; } ;
typedef  TYPE_2__ SignalstatsContext ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PIX_FMT_GRAY16 ; 
 int /*<<< orphan*/  AV_PIX_FMT_GRAY8 ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 void* FUNC5 (int,int) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    SignalstatsContext *s = ctx->priv;
    AVFilterLink *inlink = outlink->src->inputs[0];
    const AVPixFmtDescriptor *desc = FUNC6(outlink->format);
    s->hsub = desc->log2_chroma_w;
    s->vsub = desc->log2_chroma_h;
    s->depth = desc->comp[0].depth;
    if (s->depth > 8) {
        s->histy = FUNC5(1 << s->depth, sizeof(*s->histy));
        s->histu = FUNC5(1 << s->depth, sizeof(*s->histu));
        s->histv = FUNC5(1 << s->depth, sizeof(*s->histv));
        s->histsat = FUNC5(1 << s->depth, sizeof(*s->histsat));

        if (!s->histy || !s->histu || !s->histv || !s->histsat)
            return FUNC0(ENOMEM);
    }

    outlink->w = inlink->w;
    outlink->h = inlink->h;

    s->chromaw = FUNC1(inlink->w, s->hsub);
    s->chromah = FUNC1(inlink->h, s->vsub);

    s->fs = inlink->w * inlink->h;
    s->cfs = s->chromaw * s->chromah;

    s->nb_jobs   = FUNC2(1, FUNC3(inlink->h, FUNC7(ctx)));
    s->jobs_rets = FUNC5(s->nb_jobs, sizeof(*s->jobs_rets));
    if (!s->jobs_rets)
        return FUNC0(ENOMEM);

    s->frame_sat = FUNC4(s->depth > 8 ? AV_PIX_FMT_GRAY16 : AV_PIX_FMT_GRAY8,  inlink->w, inlink->h);
    s->frame_hue = FUNC4(AV_PIX_FMT_GRAY16, inlink->w, inlink->h);
    if (!s->frame_sat || !s->frame_hue)
        return FUNC0(ENOMEM);

    return 0;
}