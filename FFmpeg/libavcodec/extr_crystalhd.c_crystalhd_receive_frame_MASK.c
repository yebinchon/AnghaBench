#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_1__* priv_data; } ;
struct TYPE_16__ {scalar_t__ size; int /*<<< orphan*/  member_0; } ;
struct TYPE_15__ {scalar_t__ ReadyListCount; int /*<<< orphan*/  member_0; } ;
struct TYPE_14__ {scalar_t__ draining; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ CopyRet ;
typedef  TYPE_1__ CHDContext ;
typedef  scalar_t__ BC_STATUS ;
typedef  TYPE_2__ BC_DTS_STATUS ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 scalar_t__ BC_STS_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ RET_COPY_AGAIN ; 
 scalar_t__ RET_ERROR ; 
 scalar_t__ RET_OK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 int FUNC6 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctx, AVFrame *frame)
{
    BC_STATUS bc_ret;
    BC_DTS_STATUS decoder_status = { 0, };
    CopyRet rec_ret;
    CHDContext *priv   = avctx->priv_data;
    HANDLE dev         = priv->dev;
    int got_frame = 0;
    int ret = 0;
    AVPacket pkt = {0};

    FUNC3(avctx, AV_LOG_VERBOSE, "CrystalHD: receive_frame\n");

    ret = FUNC6(avctx, &pkt);
    if (ret < 0 && ret != AVERROR_EOF) {
        return ret;
    }

    while (pkt.size > FUNC2(dev)) {
        /*
         * Block until there is space in the buffer for the next packet.
         * We assume that the hardware will make forward progress at this
         * point, although in pathological cases that may not happen.
         */
        FUNC3(avctx, AV_LOG_TRACE, "CrystalHD: Waiting for space in input buffer\n");
    }

    ret = FUNC5(avctx, &pkt);
    FUNC4(&pkt);
    // crystalhd_is_buffer_full() should avoid this.
    if (ret == FUNC0(EAGAIN)) {
        ret = AVERROR_EXTERNAL;
    }
    if (ret < 0 && ret != AVERROR_EOF) {
        return ret;
    }

    do {
        bc_ret = FUNC1(dev, &decoder_status);
        if (bc_ret != BC_STS_SUCCESS) {
            FUNC3(avctx, AV_LOG_ERROR, "CrystalHD: GetDriverStatus failed\n");
            return -1;
        }

        if (decoder_status.ReadyListCount == 0) {
            FUNC3(avctx, AV_LOG_VERBOSE, "CrystalHD: Insufficient frames ready. Returning\n");
            got_frame = 0;
            rec_ret = RET_OK;
            break;
        }

        rec_ret = FUNC7(avctx, frame, &got_frame);
    } while (rec_ret == RET_COPY_AGAIN);

    if (rec_ret == RET_ERROR) {
        return -1;
    } else if (got_frame == 0) {
        return priv->draining ? AVERROR_EOF : FUNC0(EAGAIN);
    } else {
        return 0;
    }
}