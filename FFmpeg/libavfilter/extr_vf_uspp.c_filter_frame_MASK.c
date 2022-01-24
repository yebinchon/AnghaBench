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
struct TYPE_17__ {int non_b_qp_alloc_size; scalar_t__ qp; int /*<<< orphan*/ * non_b_qp_table; int /*<<< orphan*/  use_bframe_qp; scalar_t__ log2_count; int /*<<< orphan*/  qscale_type; } ;
typedef  TYPE_1__ USPPContext ;
struct TYPE_20__ {int /*<<< orphan*/  is_disabled; TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_19__ {int w; int h; TYPE_4__* dst; } ;
struct TYPE_18__ {scalar_t__ pict_type; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ AV_PICTURE_TYPE_B ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ **,int,int) ; 
 int FUNC10 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC11 (TYPE_3__*,int const,int const) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC14(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    USPPContext *uspp = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out = in;

    int qp_stride = 0;
    uint8_t *qp_table = NULL;

    /* if we are not in a constant user quantizer mode and we don't want to use
     * the quantizers from the B-frames (B-frames often have a higher QP), we
     * need to save the qp table from the last non B-frame; this is what the
     * following code block does */
    if (!uspp->qp) {
        qp_table = FUNC6(in, &qp_stride, &uspp->qscale_type);

        if (qp_table && !uspp->use_bframe_qp && in->pict_type != AV_PICTURE_TYPE_B) {
            int w, h;

            /* if the qp stride is not set, it means the QP are only defined on
             * a line basis */
            if (!qp_stride) {
                w = FUNC1(inlink->w, 4);
                h = 1;
            } else {
                w = qp_stride;
                h = FUNC1(inlink->h, 4);
            }

            if (w * h > uspp->non_b_qp_alloc_size) {
                int ret = FUNC9(&uspp->non_b_qp_table, w, h);
                if (ret < 0) {
                    uspp->non_b_qp_alloc_size = 0;
                    return ret;
                }
                uspp->non_b_qp_alloc_size = w * h;
            }

            FUNC3(w * h <= uspp->non_b_qp_alloc_size);
            FUNC13(uspp->non_b_qp_table, qp_table, w * h);
        }
    }

    if (uspp->log2_count && !ctx->is_disabled) {
        if (!uspp->use_bframe_qp && uspp->non_b_qp_table)
            qp_table = uspp->non_b_qp_table;

        if (qp_table || uspp->qp) {

            /* get a new frame if in-place is not possible or if the dimensions
             * are not multiple of 8 */
            if (!FUNC7(in) || (inlink->w & 7) || (inlink->h & 7)) {
                const int aligned_w = FUNC2(inlink->w, 8);
                const int aligned_h = FUNC2(inlink->h, 8);

                out = FUNC11(outlink, aligned_w, aligned_h);
                if (!out) {
                    FUNC5(&in);
                    return FUNC0(ENOMEM);
                }
                FUNC4(out, in);
                out->width  = in->width;
                out->height = in->height;
            }

            FUNC12(uspp, out->data, in->data, out->linesize, in->linesize,
                   inlink->w, inlink->h, qp_table, qp_stride);
        }
    }

    if (in != out) {
        if (in->data[3])
            FUNC8(out->data[3], out->linesize[3],
                                in ->data[3], in ->linesize[3],
                                inlink->w, inlink->h);
        FUNC5(&in);
    }
    return FUNC10(outlink, out);
}