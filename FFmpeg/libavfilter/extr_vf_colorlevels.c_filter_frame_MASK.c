#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct thread_data {double coeff; int h; int imin; int omin; int /*<<< orphan*/  offset; int /*<<< orphan*/  src_linesize; int /*<<< orphan*/  dst_linesize; int /*<<< orphan*/ * dstrow; int /*<<< orphan*/  const* srcrow; } ;
struct TYPE_25__ {TYPE_1__* internal; TYPE_5__** outputs; TYPE_3__* priv; } ;
struct TYPE_24__ {int h; int /*<<< orphan*/  w; TYPE_6__* dst; } ;
struct TYPE_23__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ ** data; } ;
struct TYPE_22__ {int step; int bpp; int nb_comp; int linesize; int /*<<< orphan*/ * rgba_map; TYPE_2__* range; } ;
struct TYPE_21__ {int in_min; int in_max; int out_min; int out_max; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* execute ) (TYPE_6__*,int /*<<< orphan*/ ,struct thread_data*,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_2__ Range ;
typedef  TYPE_3__ ColorLevelsContext ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int /*<<< orphan*/  const) ; 
 int FUNC2 (int,int /*<<< orphan*/  const) ; 
 int UINT16_MAX ; 
 int UINT8_MAX ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__**) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  colorlevel_slice_16 ; 
 int /*<<< orphan*/  colorlevel_slice_8 ; 
 int FUNC6 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  const FUNC7 (TYPE_6__*) ; 
 TYPE_4__* FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ ,struct thread_data*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ ,struct thread_data*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    ColorLevelsContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    const int step = s->step;
    AVFrame *out;
    int x, y, i;

    if (FUNC5(in)) {
        out = in;
    } else {
        out = FUNC8(outlink, outlink->w, outlink->h);
        if (!out) {
            FUNC4(&in);
            return FUNC0(ENOMEM);
        }
        FUNC3(out, in);
    }

    switch (s->bpp) {
    case 1:
        for (i = 0; i < s->nb_comp; i++) {
            Range *r = &s->range[i];
            const uint8_t offset = s->rgba_map[i];
            const uint8_t *srcrow = in->data[0];
            uint8_t *dstrow = out->data[0];
            int imin = FUNC9(r->in_min  * UINT8_MAX);
            int imax = FUNC9(r->in_max  * UINT8_MAX);
            int omin = FUNC9(r->out_min * UINT8_MAX);
            int omax = FUNC9(r->out_max * UINT8_MAX);
            double coeff;
            struct thread_data td;

            if (imin < 0) {
                imin = UINT8_MAX;
                for (y = 0; y < inlink->h; y++) {
                    const uint8_t *src = srcrow;

                    for (x = 0; x < s->linesize; x += step)
                        imin = FUNC2(imin, src[x + offset]);
                    srcrow += in->linesize[0];
                }
            }
            if (imax < 0) {
                srcrow = in->data[0];
                imax = 0;
                for (y = 0; y < inlink->h; y++) {
                    const uint8_t *src = srcrow;

                    for (x = 0; x < s->linesize; x += step)
                        imax = FUNC1(imax, src[x + offset]);
                    srcrow += in->linesize[0];
                }
            }

            srcrow = in->data[0];
            coeff = (omax - omin) / (double)(imax - imin);

            td.srcrow        = srcrow;
            td.dstrow        = dstrow;
            td.dst_linesize  = out->linesize[0];
            td.src_linesize  = in->linesize[0];
            td.coeff         = coeff;
            td.offset        = offset;
            td.h             = inlink->h;
            td.imin          = imin;
            td.omin          = omin;

            ctx->internal->execute(ctx, colorlevel_slice_8, &td, NULL,
                                   FUNC2(inlink->h, FUNC7(ctx)));
        }
        break;
    case 2:
        for (i = 0; i < s->nb_comp; i++) {
            Range *r = &s->range[i];
            const uint8_t offset = s->rgba_map[i];
            const uint8_t *srcrow = in->data[0];
            uint8_t *dstrow = out->data[0];
            int imin = FUNC9(r->in_min  * UINT16_MAX);
            int imax = FUNC9(r->in_max  * UINT16_MAX);
            int omin = FUNC9(r->out_min * UINT16_MAX);
            int omax = FUNC9(r->out_max * UINT16_MAX);
            double coeff;
            struct thread_data td;

            if (imin < 0) {
                imin = UINT16_MAX;
                for (y = 0; y < inlink->h; y++) {
                    const uint16_t *src = (const uint16_t *)srcrow;

                    for (x = 0; x < s->linesize; x += step)
                        imin = FUNC2(imin, src[x + offset]);
                    srcrow += in->linesize[0];
                }
            }
            if (imax < 0) {
                srcrow = in->data[0];
                imax = 0;
                for (y = 0; y < inlink->h; y++) {
                    const uint16_t *src = (const uint16_t *)srcrow;

                    for (x = 0; x < s->linesize; x += step)
                        imax = FUNC1(imax, src[x + offset]);
                    srcrow += in->linesize[0];
                }
            }

            srcrow = in->data[0];
            coeff = (omax - omin) / (double)(imax - imin);

            td.srcrow        = srcrow;
            td.dstrow        = dstrow;
            td.dst_linesize  = out->linesize[0];
            td.src_linesize  = in->linesize[0];
            td.coeff         = coeff;
            td.offset        = offset;
            td.h             = inlink->h;
            td.imin          = imin;
            td.omin          = omin;

            ctx->internal->execute(ctx, colorlevel_slice_16, &td, NULL,
                                   FUNC2(inlink->h, FUNC7(ctx)));
        }
    }

    if (in != out)
        FUNC4(&in);
    return FUNC6(outlink, out);
}