#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  widths ;
typedef  int /*<<< orphan*/  strides ;
typedef  int /*<<< orphan*/  heights ;
struct TYPE_12__ {int /*<<< orphan*/ * session; } ;
typedef  TYPE_1__ VTEncContext ;
struct TYPE_14__ {scalar_t__ pix_fmt; TYPE_1__* priv_data; } ;
struct TYPE_13__ {scalar_t__ format; int /*<<< orphan*/  color_range; scalar_t__* data; } ;
typedef  scalar_t__ OSStatus ;
typedef  int /*<<< orphan*/ * CVPixelBufferRef ;
typedef  scalar_t__ CVPixelBufferPoolRef ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int AV_NUM_DATA_POINTERS ; 
 scalar_t__ AV_PIX_FMT_VIDEOTOOLBOX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (TYPE_3__*,TYPE_2__ const*,int /*<<< orphan*/ *,size_t*,size_t*) ; 
 int FUNC8 (TYPE_3__*,TYPE_2__ const*,int*,int*,size_t*,size_t*,size_t*,size_t*) ; 
 scalar_t__ kVTInvalidSessionErr ; 
 int /*<<< orphan*/  FUNC9 (size_t*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC11(AVCodecContext   *avctx,
                                  const AVFrame    *frame,
                                  CVPixelBufferRef *cv_img)
{
    int plane_count;
    int color;
    size_t widths [AV_NUM_DATA_POINTERS];
    size_t heights[AV_NUM_DATA_POINTERS];
    size_t strides[AV_NUM_DATA_POINTERS];
    int status;
    size_t contiguous_buf_size;
    CVPixelBufferPoolRef pix_buf_pool;
    VTEncContext* vtctx = avctx->priv_data;

    if (avctx->pix_fmt == AV_PIX_FMT_VIDEOTOOLBOX) {
        FUNC5(frame->format == AV_PIX_FMT_VIDEOTOOLBOX);

        *cv_img = (CVPixelBufferRef)frame->data[3];
        FUNC5(*cv_img);

        FUNC1(*cv_img);
        return 0;
    }

    FUNC9(widths,  0, sizeof(widths));
    FUNC9(heights, 0, sizeof(heights));
    FUNC9(strides, 0, sizeof(strides));

    status = FUNC8(
        avctx,
        frame,
        &color,
        &plane_count,
        widths,
        heights,
        strides,
        &contiguous_buf_size
    );

    if (status) {
        FUNC6(
            avctx,
            AV_LOG_ERROR,
            "Error: Cannot convert format %d color_range %d: %d\n",
            frame->format,
            frame->color_range,
            status
        );

        return AVERROR_EXTERNAL;
    }

    pix_buf_pool = FUNC3(vtctx->session);
    if (!pix_buf_pool) {
        /* On iOS, the VT session is invalidated when the APP switches from
         * foreground to background and vice versa. Fetch the actual error code
         * of the VT session to detect that case and restart the VT session
         * accordingly. */
        OSStatus vtstatus;

        vtstatus = FUNC4(vtctx->session);
        if (vtstatus == kVTInvalidSessionErr) {
            FUNC0(vtctx->session);
            vtctx->session = NULL;
            status = FUNC10(avctx);
            if (status == 0)
                pix_buf_pool = FUNC3(vtctx->session);
        }
        if (!pix_buf_pool) {
            FUNC6(avctx, AV_LOG_ERROR, "Could not get pixel buffer pool.\n");
            return AVERROR_EXTERNAL;
        }
        else
            FUNC6(avctx, AV_LOG_WARNING, "VT session restarted because of a "
                   "kVTInvalidSessionErr error.\n");
    }

    status = FUNC2(NULL,
                                                pix_buf_pool,
                                                cv_img);


    if (status) {
        FUNC6(avctx, AV_LOG_ERROR, "Could not create pixel buffer from pool: %d.\n", status);
        return AVERROR_EXTERNAL;
    }

    status = FUNC7(avctx, frame, *cv_img, strides, heights);
    if (status) {
        FUNC0(*cv_img);
        *cv_img = NULL;
        return status;
    }

    return 0;
}