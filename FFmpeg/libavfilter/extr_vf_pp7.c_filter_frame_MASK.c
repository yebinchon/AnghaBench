#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_20__ {int /*<<< orphan*/  is_disabled; TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_19__ {int w; int h; TYPE_4__* dst; } ;
struct TYPE_18__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_17__ {scalar_t__ qp; int /*<<< orphan*/  vsub; int /*<<< orphan*/  hsub; int /*<<< orphan*/  qscale_type; } ;
typedef  TYPE_1__ PP7Context ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int const) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC10 (TYPE_3__*,int const,int const) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int const,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC12(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    PP7Context *pp7 = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out = in;

    int qp_stride = 0;
    uint8_t *qp_table = NULL;

    if (!pp7->qp)
        qp_table = FUNC5(in, &qp_stride, &pp7->qscale_type);

    if (!ctx->is_disabled) {
        const int cw = FUNC1(inlink->w, pp7->hsub);
        const int ch = FUNC1(inlink->h, pp7->vsub);

        /* get a new frame if in-place is not possible or if the dimensions
        * are not multiple of 8 */
        if (!FUNC6(in) || (inlink->w & 7) || (inlink->h & 7)) {
            const int aligned_w = FUNC2(inlink->w, 8);
            const int aligned_h = FUNC2(inlink->h, 8);

            out = FUNC10(outlink, aligned_w, aligned_h);
            if (!out) {
                FUNC4(&in);
                return FUNC0(ENOMEM);
            }
            FUNC3(out, in);
            out->width = in->width;
            out->height = in->height;
        }

        if (qp_table || pp7->qp) {

            FUNC11(pp7, out->data[0], in->data[0], out->linesize[0], in->linesize[0],
                   inlink->w, inlink->h, qp_table, qp_stride, 1);
            FUNC11(pp7, out->data[1], in->data[1], out->linesize[1], in->linesize[1],
                   cw,        ch,        qp_table, qp_stride, 0);
            FUNC11(pp7, out->data[2], in->data[2], out->linesize[2], in->linesize[2],
                   cw,        ch,        qp_table, qp_stride, 0);
            FUNC8();
        }
    }

    if (in != out) {
        if (in->data[3])
            FUNC7(out->data[3], out->linesize[3],
                                in ->data[3], in ->linesize[3],
                                inlink->w, inlink->h);
        FUNC4(&in);
    }
    return FUNC9(outlink, out);
}