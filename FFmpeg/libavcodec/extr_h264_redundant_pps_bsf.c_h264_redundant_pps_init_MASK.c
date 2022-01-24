#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ extradata; } ;
struct TYPE_16__ {int /*<<< orphan*/  par_out; TYPE_9__* par_in; TYPE_2__* priv_data; } ;
struct TYPE_15__ {int nb_units; TYPE_1__* units; } ;
struct TYPE_14__ {int global_pic_init_qp; int /*<<< orphan*/  output; int /*<<< orphan*/  current_pic_init_qp; int /*<<< orphan*/  extradata_pic_init_qp; int /*<<< orphan*/  input; TYPE_3__ access_unit; } ;
struct TYPE_13__ {scalar_t__ type; int /*<<< orphan*/  content; } ;
typedef  TYPE_2__ H264RedundantPPSContext ;
typedef  TYPE_3__ CodedBitstreamFragment ;
typedef  TYPE_4__ AVBSFContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CODEC_ID_H264 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ H264_NAL_PPS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_9__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVBSFContext *bsf)
{
    H264RedundantPPSContext *ctx = bsf->priv_data;
    CodedBitstreamFragment *au = &ctx->access_unit;
    int err, i;

    err = FUNC2(&ctx->input, AV_CODEC_ID_H264, bsf);
    if (err < 0)
        return err;

    err = FUNC2(&ctx->output, AV_CODEC_ID_H264, bsf);
    if (err < 0)
        return err;

    ctx->global_pic_init_qp = 26;

    if (bsf->par_in->extradata) {
        err = FUNC3(ctx->input, au, bsf->par_in);
        if (err < 0) {
            FUNC0(bsf, AV_LOG_ERROR, "Failed to read extradata.\n");
            goto fail;
        }

        for (i = 0; i < au->nb_units; i++) {
            if (au->units[i].type == H264_NAL_PPS) {
                err = FUNC5(ctx, au->units[i].content);
                if (err < 0)
                    goto fail;
            }
        }

        ctx->extradata_pic_init_qp = ctx->current_pic_init_qp;
        err = FUNC4(ctx->output, bsf->par_out, au);
        if (err < 0) {
            FUNC0(bsf, AV_LOG_ERROR, "Failed to write extradata.\n");
            goto fail;
        }
    }

    err = 0;
fail:
    FUNC1(ctx->output, au);
    return err;
}