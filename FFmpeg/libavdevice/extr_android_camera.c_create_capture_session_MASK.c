#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ camera_status_t ;
struct TYPE_8__ {int /*<<< orphan*/  onActive; int /*<<< orphan*/  onReady; int /*<<< orphan*/  onClosed; TYPE_2__* context; } ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  capture_request; int /*<<< orphan*/  capture_session; TYPE_5__ capture_session_state_callbacks; int /*<<< orphan*/  capture_session_output_container; int /*<<< orphan*/  camera_dev; int /*<<< orphan*/  camera_output_target; int /*<<< orphan*/  framerate_range; int /*<<< orphan*/  image_reader_window; int /*<<< orphan*/  capture_session_output; } ;
typedef  TYPE_1__ AndroidCameraCtx ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  ACAMERA_CONTROL_AE_TARGET_FPS_RANGE ; 
 scalar_t__ ACAMERA_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  TEMPLATE_RECORD ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  capture_session_active ; 
 int /*<<< orphan*/  capture_session_closed ; 
 int /*<<< orphan*/  capture_session_ready ; 

__attribute__((used)) static int FUNC12(AVFormatContext *avctx)
{
    AndroidCameraCtx *ctx = avctx->priv_data;
    camera_status_t ret;

    ret = FUNC7(&ctx->capture_session_output_container);
    if (ret != ACAMERA_OK) {
        FUNC10(avctx, AV_LOG_ERROR,
               "Failed to create capture session output container, error: %s.\n",
               FUNC11(ret));
        return AVERROR_EXTERNAL;
    }

    FUNC9(ctx->image_reader_window);

    ret = FUNC8(ctx->image_reader_window, &ctx->capture_session_output);
    if (ret != ACAMERA_OK) {
        FUNC10(avctx, AV_LOG_ERROR,
               "Failed to create capture session container, error: %s.\n",
               FUNC11(ret));
        return AVERROR_EXTERNAL;
    }

    ret = FUNC6(ctx->capture_session_output_container,
                                             ctx->capture_session_output);
    if (ret != ACAMERA_OK) {
        FUNC10(avctx, AV_LOG_ERROR,
               "Failed to add output to output container, error: %s.\n",
               FUNC11(ret));
        return AVERROR_EXTERNAL;
    }

    ret = FUNC3(ctx->image_reader_window, &ctx->camera_output_target);
    if (ret != ACAMERA_OK) {
        FUNC10(avctx, AV_LOG_ERROR,
               "Failed to create camera output target, error: %s.\n",
               FUNC11(ret));
        return AVERROR_EXTERNAL;
    }

    ret = FUNC1(ctx->camera_dev, TEMPLATE_RECORD, &ctx->capture_request);
    if (ret != ACAMERA_OK) {
        FUNC10(avctx, AV_LOG_ERROR,
               "Failed to create capture request, error: %s.\n",
               FUNC11(ret));
        return AVERROR_EXTERNAL;
    }

    ret = FUNC5(ctx->capture_request, ACAMERA_CONTROL_AE_TARGET_FPS_RANGE,
                                       2, ctx->framerate_range);
    if (ret != ACAMERA_OK) {
        FUNC10(avctx, AV_LOG_ERROR,
               "Failed to set target fps range in capture request, error: %s.\n",
               FUNC11(ret));
        return AVERROR_EXTERNAL;
    }

    ret = FUNC4(ctx->capture_request, ctx->camera_output_target);
    if (ret != ACAMERA_OK) {
        FUNC10(avctx, AV_LOG_ERROR,
               "Failed to add capture request capture request, error: %s.\n",
               FUNC11(ret));
        return AVERROR_EXTERNAL;
    }

    ctx->capture_session_state_callbacks.context = avctx;
    ctx->capture_session_state_callbacks.onClosed = capture_session_closed;
    ctx->capture_session_state_callbacks.onReady = capture_session_ready;
    ctx->capture_session_state_callbacks.onActive = capture_session_active;

    ret = FUNC2(ctx->camera_dev, ctx->capture_session_output_container,
                                             &ctx->capture_session_state_callbacks, &ctx->capture_session);
    if (ret != ACAMERA_OK) {
        FUNC10(avctx, AV_LOG_ERROR,
               "Failed to create capture session, error: %s.\n",
               FUNC11(ret));
        return AVERROR_EXTERNAL;
    }

    ret = FUNC0(ctx->capture_session, NULL, 1, &ctx->capture_request, NULL);
    if (ret != ACAMERA_OK) {
        FUNC10(avctx, AV_LOG_ERROR,
               "Failed to set repeating request on capture session, error: %s.\n",
               FUNC11(ret));
        return AVERROR_EXTERNAL;
    }

    return 0;
}