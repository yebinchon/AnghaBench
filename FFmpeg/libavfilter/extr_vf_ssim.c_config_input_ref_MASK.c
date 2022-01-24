#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_17__ {int /*<<< orphan*/  ssim_end_line; int /*<<< orphan*/  ssim_4x4_line; } ;
struct TYPE_16__ {TYPE_1__** inputs; TYPE_3__* priv; } ;
struct TYPE_15__ {int h; int w; int /*<<< orphan*/  format; TYPE_6__* dst; } ;
struct TYPE_14__ {int nb_components; TYPE_2__* comp; int /*<<< orphan*/  log2_chroma_w; int /*<<< orphan*/  log2_chroma_h; } ;
struct TYPE_13__ {int nb_components; int is_rgb; char* comps; int* planeheight; int* planewidth; double* coefs; int max; TYPE_7__ dsp; int /*<<< orphan*/  ssim_plane; int /*<<< orphan*/  temp; int /*<<< orphan*/  rgba_map; } ;
struct TYPE_12__ {int depth; } ;
struct TYPE_11__ {scalar_t__ w; scalar_t__ h; scalar_t__ format; } ;
typedef  TYPE_3__ SSIMContext ;
typedef  TYPE_4__ AVPixFmtDescriptor ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 scalar_t__ ARCH_X86 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  ssim_4x4xn_8bit ; 
 int /*<<< orphan*/  ssim_endn_8bit ; 
 int /*<<< orphan*/  ssim_plane ; 
 int /*<<< orphan*/  ssim_plane_16bit ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink)
{
    const AVPixFmtDescriptor *desc = FUNC5(inlink->format);
    AVFilterContext *ctx  = inlink->dst;
    SSIMContext *s = ctx->priv;
    int sum = 0, i;

    s->nb_components = desc->nb_components;

    if (ctx->inputs[0]->w != ctx->inputs[1]->w ||
        ctx->inputs[0]->h != ctx->inputs[1]->h) {
        FUNC3(ctx, AV_LOG_ERROR, "Width and height of input videos must be same.\n");
        return FUNC0(EINVAL);
    }
    if (ctx->inputs[0]->format != ctx->inputs[1]->format) {
        FUNC3(ctx, AV_LOG_ERROR, "Inputs must be of same pixel format.\n");
        return FUNC0(EINVAL);
    }

    s->is_rgb = FUNC6(s->rgba_map, inlink->format) >= 0;
    s->comps[0] = s->is_rgb ? 'R' : 'Y';
    s->comps[1] = s->is_rgb ? 'G' : 'U';
    s->comps[2] = s->is_rgb ? 'B' : 'V';
    s->comps[3] = 'A';

    s->planeheight[1] = s->planeheight[2] = FUNC1(inlink->h, desc->log2_chroma_h);
    s->planeheight[0] = s->planeheight[3] = inlink->h;
    s->planewidth[1]  = s->planewidth[2]  = FUNC1(inlink->w, desc->log2_chroma_w);
    s->planewidth[0]  = s->planewidth[3]  = inlink->w;
    for (i = 0; i < s->nb_components; i++)
        sum += s->planeheight[i] * s->planewidth[i];
    for (i = 0; i < s->nb_components; i++)
        s->coefs[i] = (double) s->planeheight[i] * s->planewidth[i] / sum;

    s->temp = FUNC4(2 * FUNC2(inlink->w), (desc->comp[0].depth > 8) ? sizeof(int64_t[4]) : sizeof(int[4]));
    if (!s->temp)
        return FUNC0(ENOMEM);
    s->max = (1 << desc->comp[0].depth) - 1;

    s->ssim_plane = desc->comp[0].depth > 8 ? ssim_plane_16bit : ssim_plane;
    s->dsp.ssim_4x4_line = ssim_4x4xn_8bit;
    s->dsp.ssim_end_line = ssim_endn_8bit;
    if (ARCH_X86)
        FUNC7(&s->dsp);

    return 0;
}