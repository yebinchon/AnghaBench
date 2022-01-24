#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_13__ {int x; int y; } ;
typedef  TYPE_4__ VectorscopeContext ;
struct TYPE_16__ {TYPE_3__** outputs; TYPE_1__** inputs; TYPE_4__* priv; } ;
struct TYPE_15__ {int nb_formats; int /*<<< orphan*/ * formats; } ;
struct TYPE_14__ {int flags; TYPE_2__* comp; } ;
struct TYPE_12__ {int /*<<< orphan*/  in_formats; } ;
struct TYPE_11__ {int depth; } ;
struct TYPE_10__ {TYPE_6__* in_formats; int /*<<< orphan*/  out_formats; } ;
typedef  TYPE_5__ AVPixFmtDescriptor ;
typedef  TYPE_6__ AVFilterFormats ;
typedef  TYPE_7__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_PIX_FMT_FLAG_RGB ; 
 int /*<<< orphan*/  EAGAIN ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int const*) ; 
 int* in1_pix_fmts ; 
 int* in2_pix_fmts ; 
 int* out_rgb10_pix_fmts ; 
 int* out_rgb12_pix_fmts ; 
 int* out_rgb8_pix_fmts ; 
 int* out_rgb9_pix_fmts ; 
 int* out_yuv10_pix_fmts ; 
 int* out_yuv12_pix_fmts ; 
 int* out_yuv8_pix_fmts ; 
 int* out_yuv9_pix_fmts ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx)
{
    VectorscopeContext *s = ctx->priv;
    const enum AVPixelFormat *out_pix_fmts;
    const AVPixFmtDescriptor *desc;
    AVFilterFormats *avff;
    int depth, rgb, i, ret;

    if (!ctx->inputs[0]->in_formats ||
        !ctx->inputs[0]->in_formats->nb_formats) {
        return FUNC0(EAGAIN);
    }

    if (!ctx->inputs[0]->out_formats) {
        const enum AVPixelFormat *in_pix_fmts;

        if ((s->x == 1 && s->y == 2) || (s->x == 2 && s->y == 1))
            in_pix_fmts = in2_pix_fmts;
        else
            in_pix_fmts = in1_pix_fmts;
        if ((ret = FUNC2(FUNC3(in_pix_fmts), &ctx->inputs[0]->out_formats)) < 0)
            return ret;
    }

    avff = ctx->inputs[0]->in_formats;
    desc = FUNC1(avff->formats[0]);
    rgb = desc->flags & AV_PIX_FMT_FLAG_RGB;
    depth = desc->comp[0].depth;
    for (i = 1; i < avff->nb_formats; i++) {
        desc = FUNC1(avff->formats[i]);
        if (rgb != (desc->flags & AV_PIX_FMT_FLAG_RGB) ||
            depth != desc->comp[0].depth)
            return FUNC0(EAGAIN);
    }

    if (rgb && depth == 8)
        out_pix_fmts = out_rgb8_pix_fmts;
    else if (rgb && depth == 9)
        out_pix_fmts = out_rgb9_pix_fmts;
    else if (rgb && depth == 10)
        out_pix_fmts = out_rgb10_pix_fmts;
    else if (rgb && depth == 12)
        out_pix_fmts = out_rgb12_pix_fmts;
    else if (depth == 8)
        out_pix_fmts = out_yuv8_pix_fmts;
    else if (depth == 9)
        out_pix_fmts = out_yuv9_pix_fmts;
    else if (depth == 10)
        out_pix_fmts = out_yuv10_pix_fmts;
    else if (depth == 12)
        out_pix_fmts = out_yuv12_pix_fmts;
    else
        return FUNC0(EAGAIN);
    if ((ret = FUNC2(FUNC3(out_pix_fmts), &ctx->outputs[0]->in_formats)) < 0)
        return ret;

    return 0;
}