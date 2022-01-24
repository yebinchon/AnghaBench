#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pix_fmt; } ;
struct TYPE_8__ {int /*<<< orphan*/ * buf; int /*<<< orphan*/  linesize; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(AVCodecContext *avctx, AVFrame *frame,
                                    AVPacket *avpkt)
{
    int ret;

    /* there is no need to copy as the data already match
     * a known pixel format */
    frame->buf[0] = FUNC0(avpkt->buf);
    ret = FUNC2(frame->data, frame->linesize, avpkt->data,
                               avctx->pix_fmt, avctx->width, avctx->height, 1);
    if (ret < 0) {
        FUNC1(&frame->buf[0]);
        return ret;
    }

    return 0;
}