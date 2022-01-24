#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ input_queue; int /*<<< orphan*/ * camera_mgr; int /*<<< orphan*/  camera_id; int /*<<< orphan*/ * camera_metadata; int /*<<< orphan*/ * image_reader; int /*<<< orphan*/ * camera_dev; int /*<<< orphan*/ * capture_session_output_container; int /*<<< orphan*/ * image_reader_window; int /*<<< orphan*/ * capture_session_output; int /*<<< orphan*/ * camera_output_target; int /*<<< orphan*/ * capture_request; int /*<<< orphan*/ * capture_session; int /*<<< orphan*/  exit; } ;
typedef  TYPE_1__ AndroidCameraCtx ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AVERROR_EOF ; 
 int /*<<< orphan*/  AV_THREAD_MESSAGE_NONBLOCK ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__*) ; 
 scalar_t__ FUNC17 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(AVFormatContext *avctx)
{
    AndroidCameraCtx *ctx = avctx->priv_data;

    FUNC13(&ctx->exit, 1);

    if (ctx->capture_session) {
        FUNC1(ctx->capture_session);
        // Following warning is emitted, after capture session closed callback is received:
        // ACameraCaptureSession: Device is closed but session 0 is not notified
        // Seems to be a bug in Android, we can ignore this
        FUNC0(ctx->capture_session);
        ctx->capture_session = NULL;
    }

    if (ctx->capture_request) {
        FUNC7(ctx->capture_request, ctx->camera_output_target);
        FUNC6(ctx->capture_request);
        ctx->capture_request = NULL;
    }

    if (ctx->camera_output_target) {
        FUNC5(ctx->camera_output_target);
        ctx->camera_output_target = NULL;
    }

    if (ctx->capture_session_output) {
        FUNC9(ctx->capture_session_output_container,
                ctx->capture_session_output);
        FUNC10(ctx->capture_session_output);
        ctx->capture_session_output = NULL;
    }

    if (ctx->image_reader_window) {
        FUNC12(ctx->image_reader_window);
        ctx->image_reader_window = NULL;
    }

    if (ctx->capture_session_output_container) {
        FUNC8(ctx->capture_session_output_container);
        ctx->capture_session_output_container = NULL;
    }

    if (ctx->camera_dev) {
        FUNC2(ctx->camera_dev);
        ctx->camera_dev = NULL;
    }

    if (ctx->image_reader) {
        FUNC11(ctx->image_reader);
        ctx->image_reader = NULL;
    }

    if (ctx->camera_metadata) {
        FUNC4(ctx->camera_metadata);
        ctx->camera_metadata = NULL;
    }

    FUNC14(&ctx->camera_id);

    if (ctx->camera_mgr) {
        FUNC3(ctx->camera_mgr);
        ctx->camera_mgr = NULL;
    }

    if (ctx->input_queue) {
        AVPacket pkt;
        FUNC18(ctx->input_queue, AVERROR_EOF);
        while (FUNC17(ctx->input_queue, &pkt, AV_THREAD_MESSAGE_NONBLOCK) >= 0) {
            FUNC15(&pkt);
        }
        FUNC16(&ctx->input_queue);
    }

    return 0;
}