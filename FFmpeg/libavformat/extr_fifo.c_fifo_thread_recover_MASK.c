#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_12__ {TYPE_3__* priv_data; } ;
struct TYPE_11__ {scalar_t__ drop_pkts_on_overflow; scalar_t__ recovery_wait_time; int /*<<< orphan*/  recovery_wait_streamtime; } ;
struct TYPE_10__ {scalar_t__ type; int /*<<< orphan*/  pkt; } ;
struct TYPE_9__ {scalar_t__ recovery_nr; scalar_t__ last_recovery_ts; TYPE_4__* avf; } ;
typedef  TYPE_1__ FifoThreadContext ;
typedef  TYPE_2__ FifoMessage ;
typedef  TYPE_3__ FifoContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 scalar_t__ FIFO_WRITE_PACKET ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC7(FifoThreadContext *ctx, FifoMessage *msg, int err_no)
{
    AVFormatContext *avf = ctx->avf;
    FifoContext *fifo = avf->priv_data;
    int ret;

    do {
        if (!fifo->recovery_wait_streamtime && ctx->recovery_nr > 0) {
            int64_t time_since_recovery = FUNC3() - ctx->last_recovery_ts;
            int64_t time_to_wait = FUNC1(0, fifo->recovery_wait_time - time_since_recovery);
            if (time_to_wait)
                FUNC5(FUNC2(10000, time_to_wait));
        }

        ret = FUNC6(ctx, msg, err_no);
    } while (ret == FUNC0(EAGAIN) && !fifo->drop_pkts_on_overflow);

    if (ret == FUNC0(EAGAIN) && fifo->drop_pkts_on_overflow) {
        if (msg->type == FIFO_WRITE_PACKET)
            FUNC4(&msg->pkt);
        ret = 0;
    }

    return ret;
}