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
typedef  int /*<<< orphan*/  int8_t ;
struct TYPE_25__ {int /*<<< orphan*/  is_disabled; TYPE_5__** outputs; TYPE_2__* priv; } ;
struct TYPE_24__ {int w; int h; int /*<<< orphan*/  format; TYPE_6__* dst; } ;
struct TYPE_23__ {scalar_t__ pict_type; int /*<<< orphan*/ * linesize; scalar_t__* data; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_22__ {TYPE_1__* comp; } ;
struct TYPE_21__ {int non_b_qp_alloc_size; int hsub; int vsub; scalar_t__ qp; int /*<<< orphan*/ * non_b_qp_table; int /*<<< orphan*/  use_bframe_qp; scalar_t__ log2_count; int /*<<< orphan*/  qscale_type; } ;
struct TYPE_20__ {int depth; } ;
typedef  TYPE_2__ SPPContext ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int) ; 
 scalar_t__ AV_PICTURE_TYPE_B ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__**) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int const,int const) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ **,int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (TYPE_5__*,TYPE_4__*) ; 
 TYPE_4__* FUNC13 (TYPE_5__*,int const,int const) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int const,int /*<<< orphan*/  const*,int,int,int const) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC16(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    SPPContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out = in;
    int qp_stride = 0;
    const int8_t *qp_table = NULL;
    const AVPixFmtDescriptor *desc = FUNC9(inlink->format);
    const int depth = desc->comp[0].depth;

    /* if we are not in a constant user quantizer mode and we don't want to use
     * the quantizers from the B-frames (B-frames often have a higher QP), we
     * need to save the qp table from the last non B-frame; this is what the
     * following code block does */
    if (!s->qp) {
        qp_table = FUNC6(in, &qp_stride, &s->qscale_type);

        if (qp_table && !s->use_bframe_qp && in->pict_type != AV_PICTURE_TYPE_B) {
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

            if (w * h > s->non_b_qp_alloc_size) {
                int ret = FUNC10(&s->non_b_qp_table, w, h);
                if (ret < 0) {
                    s->non_b_qp_alloc_size = 0;
                    return ret;
                }
                s->non_b_qp_alloc_size = w * h;
            }

            FUNC3(w * h <= s->non_b_qp_alloc_size);
            FUNC15(s->non_b_qp_table, qp_table, w * h);
        }
    }

    if (s->log2_count && !ctx->is_disabled) {
        if (!s->use_bframe_qp && s->non_b_qp_table)
            qp_table = s->non_b_qp_table;

        if (qp_table || s->qp) {
            const int cw = FUNC1(inlink->w, s->hsub);
            const int ch = FUNC1(inlink->h, s->vsub);

            /* get a new frame if in-place is not possible or if the dimensions
             * are not multiple of 8 */
            if (!FUNC7(in) || (inlink->w & 7) || (inlink->h & 7)) {
                const int aligned_w = FUNC2(inlink->w, 8);
                const int aligned_h = FUNC2(inlink->h, 8);

                out = FUNC13(outlink, aligned_w, aligned_h);
                if (!out) {
                    FUNC5(&in);
                    return FUNC0(ENOMEM);
                }
                FUNC4(out, in);
                out->width  = in->width;
                out->height = in->height;
            }

            FUNC14(s, out->data[0], in->data[0], out->linesize[0], in->linesize[0], inlink->w, inlink->h, qp_table, qp_stride, 1, depth);

            if (out->data[2]) {
                FUNC14(s, out->data[1], in->data[1], out->linesize[1], in->linesize[1], cw,        ch,        qp_table, qp_stride, 0, depth);
                FUNC14(s, out->data[2], in->data[2], out->linesize[2], in->linesize[2], cw,        ch,        qp_table, qp_stride, 0, depth);
            }
            FUNC11();
        }
    }

    if (in != out) {
        if (in->data[3])
            FUNC8(out->data[3], out->linesize[3],
                                in ->data[3], in ->linesize[3],
                                inlink->w, inlink->h);
        FUNC5(&in);
    }
    return FUNC12(outlink, out);
}