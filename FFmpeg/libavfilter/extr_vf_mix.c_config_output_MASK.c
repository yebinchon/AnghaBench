#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  on_event; TYPE_2__* opaque; TYPE_3__* in; } ;
struct TYPE_17__ {TYPE_4__** inputs; TYPE_2__* priv; } ;
struct TYPE_16__ {int h; int w; int /*<<< orphan*/  time_base; void* sample_aspect_ratio; void* frame_rate; int /*<<< orphan*/  format; TYPE_5__* src; } ;
struct TYPE_15__ {int sync; void* after; void* before; int /*<<< orphan*/  time_base; } ;
struct TYPE_14__ {int nb_inputs; int depth; int max; int* height; int duration; TYPE_6__ fs; scalar_t__ tmix; TYPE_10__* desc; int /*<<< orphan*/  linesize; int /*<<< orphan*/  nb_planes; } ;
struct TYPE_13__ {int depth; } ;
struct TYPE_12__ {int /*<<< orphan*/  log2_chroma_h; TYPE_1__* comp; } ;
typedef  TYPE_2__ MixContext ;
typedef  TYPE_3__ FFFrameSyncIn ;
typedef  void* AVRational ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_BUG ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 void* EXT_INFINITY ; 
 void* EXT_STOP ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,char*,int,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_6__*) ; 
 int FUNC7 (TYPE_6__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  process_frame ; 

__attribute__((used)) static int FUNC8(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    MixContext *s = ctx->priv;
    AVRational frame_rate = ctx->inputs[0]->frame_rate;
    AVRational sar = ctx->inputs[0]->sample_aspect_ratio;
    AVFilterLink *inlink = ctx->inputs[0];
    int height = ctx->inputs[0]->h;
    int width = ctx->inputs[0]->w;
    FFFrameSyncIn *in;
    int i, ret;

    if (!s->tmix) {
        for (i = 1; i < s->nb_inputs; i++) {
            if (ctx->inputs[i]->h != height || ctx->inputs[i]->w != width) {
                FUNC3(ctx, AV_LOG_ERROR, "Input %d size (%dx%d) does not match input %d size (%dx%d).\n", i, ctx->inputs[i]->w, ctx->inputs[i]->h, 0, width, height);
                return FUNC0(EINVAL);
            }
        }
    }

    s->desc = FUNC5(outlink->format);
    if (!s->desc)
        return AVERROR_BUG;
    s->nb_planes = FUNC4(outlink->format);
    s->depth = s->desc->comp[0].depth;
    s->max = (1 << s->depth) - 1;

    if ((ret = FUNC2(s->linesize, inlink->format, inlink->w)) < 0)
        return ret;

    s->height[1] = s->height[2] = FUNC1(inlink->h, s->desc->log2_chroma_h);
    s->height[0] = s->height[3] = inlink->h;

    if (s->tmix)
        return 0;

    outlink->w          = width;
    outlink->h          = height;
    outlink->frame_rate = frame_rate;
    outlink->sample_aspect_ratio = sar;

    if ((ret = FUNC7(&s->fs, ctx, s->nb_inputs)) < 0)
        return ret;

    in = s->fs.in;
    s->fs.opaque = s;
    s->fs.on_event = process_frame;

    for (i = 0; i < s->nb_inputs; i++) {
        AVFilterLink *inlink = ctx->inputs[i];

        in[i].time_base = inlink->time_base;
        in[i].sync   = 1;
        in[i].before = EXT_STOP;
        in[i].after  = (s->duration == 1 || (s->duration == 2 && i == 0)) ? EXT_STOP : EXT_INFINITY;
    }

    ret = FUNC6(&s->fs);
    outlink->time_base = s->fs.time_base;

    return ret;
}