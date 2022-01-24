#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* priv_data; } ;
struct TYPE_10__ {scalar_t__ pts; } ;
struct TYPE_9__ {scalar_t__ max_recovery_attempts; scalar_t__ recovery_wait_streamtime; } ;
struct TYPE_8__ {scalar_t__ last_recovery_ts; scalar_t__ recovery_nr; TYPE_4__* avf; } ;
typedef  TYPE_1__ FifoThreadContext ;
typedef  TYPE_2__ FifoContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(FifoThreadContext *ctx, AVPacket *pkt,
                                                int err_no)
{
    AVFormatContext *avf = ctx->avf;
    FifoContext *fifo = avf->priv_data;
    int ret;

    FUNC3(avf, AV_LOG_INFO, "Recovery failed: %s\n",
           FUNC1(err_no));

    if (fifo->recovery_wait_streamtime) {
        if (pkt->pts == AV_NOPTS_VALUE)
            FUNC3(avf, AV_LOG_WARNING, "Packet does not contain presentation"
                   " timestamp, recovery will be attempted immediately");
        ctx->last_recovery_ts = pkt->pts;
    } else {
        ctx->last_recovery_ts = FUNC2();
    }

    if (fifo->max_recovery_attempts &&
        ctx->recovery_nr >= fifo->max_recovery_attempts) {
        FUNC3(avf, AV_LOG_ERROR,
               "Maximal number of %d recovery attempts reached.\n",
               fifo->max_recovery_attempts);
        ret = err_no;
    } else {
        ret = FUNC0(EAGAIN);
    }

    return ret;
}