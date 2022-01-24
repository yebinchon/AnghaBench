#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_1__* internal; } ;
struct TYPE_20__ {TYPE_2__* private_ref; } ;
struct TYPE_19__ {int /*<<< orphan*/  post_process; int /*<<< orphan*/  (* hwaccel_priv_free ) (TYPE_3__*) ;TYPE_3__* hwaccel_priv; } ;
struct TYPE_18__ {int /*<<< orphan*/  decoder_pool; int /*<<< orphan*/  decoder_ref; scalar_t__ nb_slices; scalar_t__ bitstream_len; } ;
struct TYPE_17__ {unsigned int idx; TYPE_13__* idx_ref; int /*<<< orphan*/  decoder_ref; } ;
struct TYPE_16__ {scalar_t__ data; } ;
struct TYPE_15__ {TYPE_4__* hwaccel_priv_data; } ;
struct TYPE_14__ {scalar_t__ data; } ;
typedef  TYPE_3__ NVDECFrame ;
typedef  TYPE_4__ NVDECContext ;
typedef  TYPE_5__ FrameDecodeData ;
typedef  TYPE_6__ AVFrame ;
typedef  TYPE_7__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_13__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  nvdec_retrieve_data ; 

int FUNC6(AVCodecContext *avctx, AVFrame *frame)
{
    NVDECContext *ctx = avctx->internal->hwaccel_priv_data;
    FrameDecodeData *fdd = (FrameDecodeData*)frame->private_ref->data;
    NVDECFrame *cf = NULL;
    int ret;

    ctx->bitstream_len = 0;
    ctx->nb_slices     = 0;

    if (fdd->hwaccel_priv)
        return 0;

    cf = FUNC4(sizeof(*cf));
    if (!cf)
        return FUNC0(ENOMEM);

    cf->decoder_ref = FUNC2(ctx->decoder_ref);
    if (!cf->decoder_ref) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    cf->idx_ref = FUNC1(ctx->decoder_pool);
    if (!cf->idx_ref) {
        FUNC3(avctx, AV_LOG_ERROR, "No decoder surfaces left\n");
        ret = FUNC0(ENOMEM);
        goto fail;
    }
    cf->idx = *(unsigned int*)cf->idx_ref->data;

    fdd->hwaccel_priv      = cf;
    fdd->hwaccel_priv_free = nvdec_fdd_priv_free;
    fdd->post_process      = nvdec_retrieve_data;

    return 0;
fail:
    FUNC5(cf);
    return ret;

}