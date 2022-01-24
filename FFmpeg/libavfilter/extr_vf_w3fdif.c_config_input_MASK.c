#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  filter_scale; int /*<<< orphan*/  filter_complex_high; int /*<<< orphan*/  filter_simple_high; int /*<<< orphan*/  filter_complex_low; int /*<<< orphan*/  filter_simple_low; } ;
struct TYPE_12__ {int* planeheight; int nb_threads; int max; TYPE_6__ dsp; void** work_line; int /*<<< orphan*/ * linesize; int /*<<< orphan*/  nb_planes; } ;
typedef  TYPE_2__ W3FDIFContext ;
struct TYPE_15__ {TYPE_2__* priv; } ;
struct TYPE_14__ {int h; int /*<<< orphan*/  format; int /*<<< orphan*/  w; TYPE_5__* dst; } ;
struct TYPE_13__ {TYPE_1__* comp; int /*<<< orphan*/  log2_chroma_h; } ;
struct TYPE_11__ {int depth; } ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 scalar_t__ ARCH_X86 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  filter16_complex_high ; 
 int /*<<< orphan*/  filter16_complex_low ; 
 int /*<<< orphan*/  filter16_scale ; 
 int /*<<< orphan*/  filter16_simple_high ; 
 int /*<<< orphan*/  filter16_simple_low ; 
 int /*<<< orphan*/  filter_complex_high ; 
 int /*<<< orphan*/  filter_complex_low ; 
 int /*<<< orphan*/  filter_scale ; 
 int /*<<< orphan*/  filter_simple_high ; 
 int /*<<< orphan*/  filter_simple_low ; 

__attribute__((used)) static int FUNC10(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    W3FDIFContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = FUNC7(inlink->format);
    int ret, i, depth;

    if ((ret = FUNC4(s->linesize, inlink->format, inlink->w)) < 0)
        return ret;

    s->planeheight[1] = s->planeheight[2] = FUNC1(inlink->h, desc->log2_chroma_h);
    s->planeheight[0] = s->planeheight[3] = inlink->h;

    if (inlink->h < 3) {
        FUNC5(ctx, AV_LOG_ERROR, "Video of less than 3 lines is not supported\n");
        return FUNC0(EINVAL);
    }

    s->nb_planes = FUNC6(inlink->format);
    s->nb_threads = FUNC8(ctx);
    s->work_line = FUNC3(s->nb_threads, sizeof(*s->work_line));
    if (!s->work_line)
        return FUNC0(ENOMEM);

    for (i = 0; i < s->nb_threads; i++) {
        s->work_line[i] = FUNC3(FUNC2(s->linesize[0], 32), sizeof(*s->work_line[0]));
        if (!s->work_line[i])
            return FUNC0(ENOMEM);
    }

    depth = desc->comp[0].depth;
    s->max = ((1 << depth) - 1) * 256 * 128;
    if (depth <= 8) {
        s->dsp.filter_simple_low   = filter_simple_low;
        s->dsp.filter_complex_low  = filter_complex_low;
        s->dsp.filter_simple_high  = filter_simple_high;
        s->dsp.filter_complex_high = filter_complex_high;
        s->dsp.filter_scale        = filter_scale;
    } else {
        s->dsp.filter_simple_low   = filter16_simple_low;
        s->dsp.filter_complex_low  = filter16_complex_low;
        s->dsp.filter_simple_high  = filter16_simple_high;
        s->dsp.filter_complex_high = filter16_complex_high;
        s->dsp.filter_scale        = filter16_scale;
    }

    if (ARCH_X86)
        FUNC9(&s->dsp, depth);

    return 0;
}