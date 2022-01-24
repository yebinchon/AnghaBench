#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_15__ {scalar_t__ data; } ;
struct TYPE_14__ {scalar_t__ format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_5__* hw_frames_ctx; } ;
struct TYPE_13__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_1__ AVHWFramesContext ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_HWFRAME_TRANSFER_DIRECTION_FROM ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int**) ; 
 int FUNC6 (TYPE_2__*,TYPE_2__ const*,int) ; 
 int FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFrame *dst, const AVFrame *src, int flags)
{
    AVHWFramesContext *ctx = (AVHWFramesContext*)src->hw_frames_ctx->data;
    AVFrame *frame_tmp;
    int ret = 0;

    frame_tmp = FUNC1();
    if (!frame_tmp)
        return FUNC0(ENOMEM);

    /* if the format is set, use that
     * otherwise pick the first supported one */
    if (dst->format >= 0) {
        frame_tmp->format = dst->format;
    } else {
        enum AVPixelFormat *formats;

        ret = FUNC7(src->hw_frames_ctx,
                                              AV_HWFRAME_TRANSFER_DIRECTION_FROM,
                                              &formats, 0);
        if (ret < 0)
            goto fail;
        frame_tmp->format = formats[0];
        FUNC5(&formats);
    }
    frame_tmp->width  = ctx->width;
    frame_tmp->height = ctx->height;

    ret = FUNC3(frame_tmp, 32);
    if (ret < 0)
        goto fail;

    ret = FUNC6(frame_tmp, src, flags);
    if (ret < 0)
        goto fail;

    frame_tmp->width  = src->width;
    frame_tmp->height = src->height;

    FUNC4(dst, frame_tmp);

fail:
    FUNC2(&frame_tmp);
    return ret;
}