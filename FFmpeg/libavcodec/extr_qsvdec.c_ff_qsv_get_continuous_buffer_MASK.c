#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_11__ {int pix_fmt; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_10__ {int* linesize; scalar_t__* data; TYPE_9__** buf; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVCodecContext ;
typedef  int /*<<< orphan*/  AVBufferPool ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
#define  AV_PIX_FMT_NV12 129 
#define  AV_PIX_FMT_P010 128 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_9__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx, AVFrame *frame, AVBufferPool *pool)
{
    int ret = 0;

    FUNC5(avctx, frame);

    frame->width       = avctx->width;
    frame->height      = avctx->height;

    switch (avctx->pix_fmt) {
    case AV_PIX_FMT_NV12:
        frame->linesize[0] = FUNC1(avctx->width, 128);
        break;
    case AV_PIX_FMT_P010:
        frame->linesize[0] = 2 * FUNC1(avctx->width, 128);
        break;
    default:
        FUNC3(avctx, AV_LOG_ERROR, "Unsupported pixel format.\n");
        return FUNC0(ENOMEM);
    }

    frame->linesize[1] = frame->linesize[0];
    frame->buf[0]      = FUNC2(pool);
    if (!frame->buf[0])
        return FUNC0(ENOMEM);

    frame->data[0] = frame->buf[0]->data;
    frame->data[1] = frame->data[0] +
                            frame->linesize[0] * FUNC1(avctx->height, 64);

    ret = FUNC4(frame);
    if (ret < 0)
        return ret;

    return 0;
}