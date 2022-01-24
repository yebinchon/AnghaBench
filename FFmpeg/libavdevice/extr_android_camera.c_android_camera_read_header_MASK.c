#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_1__* priv_data; } ;
struct TYPE_13__ {int /*<<< orphan*/  camera_mgr; int /*<<< orphan*/  input_queue_size; int /*<<< orphan*/  input_queue; int /*<<< orphan*/  exit; int /*<<< orphan*/  got_image_format; } ;
typedef  TYPE_1__ AndroidCameraCtx ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC13(AVFormatContext *avctx)
{
    AndroidCameraCtx *ctx = avctx->priv_data;
    int ret;

    FUNC3(&ctx->got_image_format, 0);
    FUNC3(&ctx->exit, 0);

    ret = FUNC6(&ctx->input_queue, ctx->input_queue_size, sizeof(AVPacket));
    if (ret < 0) {
        FUNC5(avctx, AV_LOG_ERROR,
               "Failed to allocate input queue, error: %s.\n", FUNC4(ret));
        goto error;
    }

    ctx->camera_mgr = FUNC0();
    if (!ctx->camera_mgr) {
        FUNC5(avctx, AV_LOG_ERROR, "Failed to create Android camera manager.\n");
        ret = AVERROR_EXTERNAL;
        goto error;
    }

    ret = FUNC12(avctx);
    if (ret < 0) {
        FUNC5(avctx, AV_LOG_ERROR, "Failed to open camera.\n");
        goto error;
    }

    FUNC9(avctx);
    FUNC11(avctx);
    FUNC10(avctx);

    ret = FUNC8(avctx);
    if (ret < 0) {
        goto error;
    }

    ret = FUNC7(avctx);
    if (ret < 0) {
        goto error;
    }

    ret = FUNC1(avctx);

error:
    if (ret < 0) {
        FUNC2(avctx);
        FUNC5(avctx, AV_LOG_ERROR, "Failed to open android_camera.\n");
    }

    return ret;
}