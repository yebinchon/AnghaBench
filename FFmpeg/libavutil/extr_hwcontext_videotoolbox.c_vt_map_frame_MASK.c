#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_10__ {int format; int /*<<< orphan*/  hw_frames_ctx; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_9__ {scalar_t__ width; scalar_t__ height; } ;
typedef  int /*<<< orphan*/  OSType ;
typedef  scalar_t__ CVReturn ;
typedef  int /*<<< orphan*/  CVPixelBufferRef ;
typedef  TYPE_1__ AVHWFramesContext ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int AVERROR_UNKNOWN ; 
 int AV_HWFRAME_MAP_READ ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__ const*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ kCVPixelBufferLock_ReadOnly ; 
 scalar_t__ kCVReturnSuccess ; 
 int /*<<< orphan*/  vt_unmap ; 

__attribute__((used)) static int FUNC15(AVHWFramesContext *ctx, AVFrame *dst, const AVFrame *src,
                        int flags)
{
    CVPixelBufferRef pixbuf = (CVPixelBufferRef)src->data[3];
    OSType pixel_format = FUNC5(pixbuf);
    CVReturn err;
    uint32_t map_flags = 0;
    int ret;
    int i;
    enum AVPixelFormat format;

    format = FUNC13(pixel_format);
    if (dst->format != format) {
        FUNC12(ctx, AV_LOG_ERROR, "Unsupported or mismatching pixel format: %s\n",
               FUNC11(pixel_format));
        return AVERROR_UNKNOWN;
    }

    if (FUNC7(pixbuf) != ctx->width ||
        FUNC4(pixbuf) != ctx->height) {
        FUNC12(ctx, AV_LOG_ERROR, "Inconsistent frame dimensions.\n");
        return AVERROR_UNKNOWN;
    }

    if (flags == AV_HWFRAME_MAP_READ)
        map_flags = kCVPixelBufferLock_ReadOnly;

    err = FUNC9(pixbuf, map_flags);
    if (err != kCVReturnSuccess) {
        FUNC12(ctx, AV_LOG_ERROR, "Error locking the pixel buffer.\n");
        return AVERROR_UNKNOWN;
    }

    if (FUNC8(pixbuf)) {
        int planes = FUNC6(pixbuf);
        for (i = 0; i < planes; i++) {
            dst->data[i]     = FUNC1(pixbuf, i);
            dst->linesize[i] = FUNC3(pixbuf, i);
        }
    } else {
        dst->data[0]     = FUNC0(pixbuf);
        dst->linesize[0] = FUNC2(pixbuf);
    }

    ret = FUNC14(src->hw_frames_ctx, dst, src, vt_unmap,
                                (void *)(uintptr_t)map_flags);
    if (ret < 0)
        goto unlock;

    return 0;

unlock:
    FUNC10(pixbuf, map_flags);
    return ret;
}