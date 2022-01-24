#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  encoder_flushing; } ;
typedef  TYPE_1__ NvencContext ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*) ; 

int FUNC3(AVCodecContext *avctx, AVPacket *pkt,
                          const AVFrame *frame, int *got_packet)
{
    NvencContext *ctx = avctx->priv_data;
    int res;

    if (!ctx->encoder_flushing) {
        res = FUNC2(avctx, frame);
        if (res < 0)
            return res;
    }

    res = FUNC1(avctx, pkt);
    if (res == FUNC0(EAGAIN) || res == AVERROR_EOF) {
        *got_packet = 0;
    } else if (res < 0) {
        return res;
    } else {
        *got_packet = 1;
    }

    return 0;
}