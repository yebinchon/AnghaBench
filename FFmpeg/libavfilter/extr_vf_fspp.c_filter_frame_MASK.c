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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_20__ {int /*<<< orphan*/  is_disabled; TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_19__ {int w; int h; TYPE_4__* dst; } ;
struct TYPE_18__ {scalar_t__ pict_type; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_17__ {int strength; int* threshold_mtx_noq; int non_b_qp_alloc_size; int hsub; int vsub; scalar_t__ qp; int /*<<< orphan*/ * non_b_qp_table; int /*<<< orphan*/  use_bframe_qp; scalar_t__ log2_count; int /*<<< orphan*/  qscale_type; int /*<<< orphan*/ * threshold_mtx; int /*<<< orphan*/  (* mul_thrmat ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ;scalar_t__ prev_q; } ;
typedef  TYPE_1__ FSPPContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int) ; 
 scalar_t__ AV_PICTURE_TYPE_B ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int const) ; 
 int FUNC9 (int /*<<< orphan*/ **,int,int) ; 
 int* custom_threshold ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC12 (TYPE_3__*,int const,int const) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int const,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC16(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    FSPPContext *fspp = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out = in;

    int qp_stride = 0;
    uint8_t *qp_table = NULL;
    int i, bias;
    int custom_threshold_m[64];

    bias = (1 << 4) + fspp->strength;

    for (i = 0; i < 64; i++) //FIXME: tune custom_threshold[] and remove this !
        custom_threshold_m[i] = (int)(custom_threshold[i] * (bias / 71.0) + 0.5);

    for (i = 0; i < 8; i++) {
        fspp->threshold_mtx_noq[2 * i] = (uint64_t)custom_threshold_m[i * 8 + 2]
                                      |(((uint64_t)custom_threshold_m[i * 8 + 6]) << 16)
                                      |(((uint64_t)custom_threshold_m[i * 8 + 0]) << 32)
                                      |(((uint64_t)custom_threshold_m[i * 8 + 4]) << 48);

        fspp->threshold_mtx_noq[2 * i + 1] = (uint64_t)custom_threshold_m[i * 8 + 5]
                                          |(((uint64_t)custom_threshold_m[i * 8 + 3]) << 16)
                                          |(((uint64_t)custom_threshold_m[i * 8 + 1]) << 32)
                                          |(((uint64_t)custom_threshold_m[i * 8 + 7]) << 48);
    }

    if (fspp->qp)
        fspp->prev_q = fspp->qp, fspp->mul_thrmat((int16_t *)(&fspp->threshold_mtx_noq[0]), (int16_t *)(&fspp->threshold_mtx[0]), fspp->qp);

    /* if we are not in a constant user quantizer mode and we don't want to use
     * the quantizers from the B-frames (B-frames often have a higher QP), we
     * need to save the qp table from the last non B-frame; this is what the
     * following code block does */
    if (!fspp->qp) {
        qp_table = FUNC6(in, &qp_stride, &fspp->qscale_type);

        if (qp_table && !fspp->use_bframe_qp && in->pict_type != AV_PICTURE_TYPE_B) {
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
            if (w * h > fspp->non_b_qp_alloc_size) {
                int ret = FUNC9(&fspp->non_b_qp_table, w, h);
                if (ret < 0) {
                    fspp->non_b_qp_alloc_size = 0;
                    return ret;
                }
                fspp->non_b_qp_alloc_size = w * h;
            }

            FUNC3(w * h <= fspp->non_b_qp_alloc_size);
            FUNC14(fspp->non_b_qp_table, qp_table, w * h);
        }
    }

    if (fspp->log2_count && !ctx->is_disabled) {
        if (!fspp->use_bframe_qp && fspp->non_b_qp_table)
            qp_table = fspp->non_b_qp_table;

        if (qp_table || fspp->qp) {
            const int cw = FUNC1(inlink->w, fspp->hsub);
            const int ch = FUNC1(inlink->h, fspp->vsub);

            /* get a new frame if in-place is not possible or if the dimensions
             * are not multiple of 8 */
            if (!FUNC7(in) || (inlink->w & 7) || (inlink->h & 7)) {
                const int aligned_w = FUNC2(inlink->w, 8);
                const int aligned_h = FUNC2(inlink->h, 8);

                out = FUNC12(outlink, aligned_w, aligned_h);
                if (!out) {
                    FUNC5(&in);
                    return FUNC0(ENOMEM);
                }
                FUNC4(out, in);
                out->width = in->width;
                out->height = in->height;
            }

            FUNC13(fspp, out->data[0], in->data[0], out->linesize[0], in->linesize[0],
                   inlink->w, inlink->h, qp_table, qp_stride, 1);
            FUNC13(fspp, out->data[1], in->data[1], out->linesize[1], in->linesize[1],
                   cw,        ch,        qp_table, qp_stride, 0);
            FUNC13(fspp, out->data[2], in->data[2], out->linesize[2], in->linesize[2],
                   cw,        ch,        qp_table, qp_stride, 0);
            FUNC10();
        }
    }

    if (in != out) {
        if (in->data[3])
            FUNC8(out->data[3], out->linesize[3],
                                in ->data[3], in ->linesize[3],
                                inlink->w, inlink->h);
        FUNC5(&in);
    }
    return FUNC11(outlink, out);
}