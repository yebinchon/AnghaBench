#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ data; } ;
struct TYPE_12__ {int /*<<< orphan*/  hw_frames_ctx; } ;
struct TYPE_11__ {int initial_pool_size; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  sw_format; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ AVHWFramesContext ;
typedef  TYPE_2__ AVCodecContext ;
typedef  TYPE_3__ AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PIX_FMT_NV12 ; 
 int /*<<< orphan*/  AV_PIX_FMT_VAAPI ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 char* FUNC3 (int) ; 
 TYPE_3__* FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  height ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  width ; 

__attribute__((used)) static int FUNC7(AVCodecContext *ctx, AVBufferRef *hw_device_ctx)
{
    AVBufferRef *hw_frames_ref;
    AVHWFramesContext *frames_ctx = NULL;
    int err = 0;

    if (!(hw_frames_ref = FUNC4(hw_device_ctx))) {
        FUNC6(stderr, "Failed to create VAAPI frame context.\n");
        return -1;
    }
    frames_ctx = (AVHWFramesContext *)(hw_frames_ref->data);
    frames_ctx->format    = AV_PIX_FMT_VAAPI;
    frames_ctx->sw_format = AV_PIX_FMT_NV12;
    frames_ctx->width     = width;
    frames_ctx->height    = height;
    frames_ctx->initial_pool_size = 20;
    if ((err = FUNC5(hw_frames_ref)) < 0) {
        FUNC6(stderr, "Failed to initialize VAAPI frame context."
                "Error code: %s\n",FUNC3(err));
        FUNC2(&hw_frames_ref);
        return err;
    }
    ctx->hw_frames_ctx = FUNC1(hw_frames_ref);
    if (!ctx->hw_frames_ctx)
        err = FUNC0(ENOMEM);

    FUNC2(&hw_frames_ref);
    return err;
}