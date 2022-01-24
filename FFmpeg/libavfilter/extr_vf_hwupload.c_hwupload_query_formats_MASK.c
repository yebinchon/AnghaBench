#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_18__ {TYPE_2__** outputs; TYPE_1__** inputs; int /*<<< orphan*/  hw_device_ctx; TYPE_3__* priv; } ;
struct TYPE_17__ {int* valid_sw_formats; int* valid_hw_formats; } ;
struct TYPE_16__ {TYPE_10__* hwdevice_ref; int /*<<< orphan*/ * hwdevice; } ;
struct TYPE_15__ {int /*<<< orphan*/  in_formats; } ;
struct TYPE_14__ {int /*<<< orphan*/  out_formats; } ;
struct TYPE_13__ {scalar_t__ data; } ;
typedef  TYPE_3__ HWUploadContext ;
typedef  TYPE_4__ AVHWFramesConstraints ;
typedef  int /*<<< orphan*/  AVHWDeviceContext ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int const AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_10__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__**) ; 
 TYPE_4__* FUNC3 (TYPE_10__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ **,int const) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int const*) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *avctx)
{
    HWUploadContext *ctx = avctx->priv;
    AVHWFramesConstraints *constraints = NULL;
    const enum AVPixelFormat *input_pix_fmts, *output_pix_fmts;
    AVFilterFormats *input_formats = NULL;
    int err, i;

    if (!avctx->hw_device_ctx) {
        FUNC5(ctx, AV_LOG_ERROR, "A hardware device reference is required "
               "to upload frames to.\n");
        return FUNC0(EINVAL);
    }

    ctx->hwdevice_ref = FUNC1(avctx->hw_device_ctx);
    if (!ctx->hwdevice_ref)
        return FUNC0(ENOMEM);
    ctx->hwdevice = (AVHWDeviceContext*)ctx->hwdevice_ref->data;

    constraints = FUNC3(ctx->hwdevice_ref, NULL);
    if (!constraints) {
        err = FUNC0(EINVAL);
        goto fail;
    }

    input_pix_fmts  = constraints->valid_sw_formats;
    output_pix_fmts = constraints->valid_hw_formats;

    input_formats = FUNC8(output_pix_fmts);
    if (!input_formats) {
        err = FUNC0(ENOMEM);
        goto fail;
    }
    if (input_pix_fmts) {
        for (i = 0; input_pix_fmts[i] != AV_PIX_FMT_NONE; i++) {
            err = FUNC6(&input_formats, input_pix_fmts[i]);
            if (err < 0)
                goto fail;
        }
    }

    if ((err = FUNC7(input_formats, &avctx->inputs[0]->out_formats)) < 0 ||
        (err = FUNC7(FUNC8(output_pix_fmts),
                              &avctx->outputs[0]->in_formats)) < 0)
        goto fail;

    FUNC4(&constraints);
    return 0;

fail:
    FUNC2(&ctx->hwdevice_ref);
    FUNC4(&constraints);
    return err;
}