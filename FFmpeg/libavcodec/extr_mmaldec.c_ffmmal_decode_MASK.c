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
struct TYPE_14__ {scalar_t__ extradata_size; int /*<<< orphan*/  extradata; TYPE_1__* priv_data; } ;
struct TYPE_13__ {scalar_t__ size; int /*<<< orphan*/  data; int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {int extradata_sent; } ;
typedef  TYPE_1__ MMALDecodeContext ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_3__*,TYPE_2__*,int) ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx, void *data, int *got_frame,
                         AVPacket *avpkt)
{
    MMALDecodeContext *ctx = avctx->priv_data;
    AVFrame *frame = data;
    int ret = 0;

    if (avctx->extradata_size && !ctx->extradata_sent) {
        AVPacket pkt = {0};
        FUNC0(&pkt);
        pkt.data = avctx->extradata;
        pkt.size = avctx->extradata_size;
        ctx->extradata_sent = 1;
        if ((ret = FUNC1(avctx, &pkt, 1)) < 0)
            return ret;
    }

    if ((ret = FUNC1(avctx, avpkt, 0)) < 0)
        return ret;

    if ((ret = FUNC2(avctx)) < 0)
        return ret;

    if ((ret = FUNC3(avctx)) < 0)
        return ret;

    if ((ret = FUNC4(avctx, frame, got_frame)) < 0)
        return ret;

    // ffmmal_read_frame() can block for a while. Since the decoder is
    // asynchronous, it's a good idea to fill the ports again.

    if ((ret = FUNC3(avctx)) < 0)
        return ret;

    if ((ret = FUNC2(avctx)) < 0)
        return ret;

    return ret;
}