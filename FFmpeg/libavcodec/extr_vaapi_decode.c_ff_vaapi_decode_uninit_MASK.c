#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VAStatus ;
struct TYPE_9__ {scalar_t__ va_context; scalar_t__ va_config; TYPE_1__* hwctx; int /*<<< orphan*/  device_ref; scalar_t__ have_old_context; } ;
typedef  TYPE_3__ VAAPIDecodeContext ;
struct TYPE_10__ {TYPE_2__* internal; } ;
struct TYPE_8__ {TYPE_3__* hwaccel_priv_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  display; } ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ VA_INVALID_ID ; 
 scalar_t__ VA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

int FUNC5(AVCodecContext *avctx)
{
    VAAPIDecodeContext *ctx = avctx->internal->hwaccel_priv_data;
    VAStatus vas;

#if FF_API_STRUCT_VAAPI_CONTEXT
    if (ctx->have_old_context) {
        av_buffer_unref(&ctx->device_ref);
    } else {
#endif

    if (ctx->va_context != VA_INVALID_ID) {
        vas = FUNC3(ctx->hwctx->display, ctx->va_context);
        if (vas != VA_STATUS_SUCCESS) {
            FUNC1(avctx, AV_LOG_ERROR, "Failed to destroy decode "
                   "context %#x: %d (%s).\n",
                   ctx->va_context, vas, FUNC4(vas));
        }
    }
    if (ctx->va_config != VA_INVALID_ID) {
        vas = FUNC2(ctx->hwctx->display, ctx->va_config);
        if (vas != VA_STATUS_SUCCESS) {
            FUNC1(avctx, AV_LOG_ERROR, "Failed to destroy decode "
                   "configuration %#x: %d (%s).\n",
                   ctx->va_config, vas, FUNC4(vas));
        }
    }

#if FF_API_STRUCT_VAAPI_CONTEXT
    }
#endif

    return 0;
}