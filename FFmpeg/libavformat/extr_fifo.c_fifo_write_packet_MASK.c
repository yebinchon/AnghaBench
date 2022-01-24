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
typedef  int uint8_t ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
struct TYPE_8__ {int overflow_flag; int /*<<< orphan*/  overflow_flag_lock; scalar_t__ drop_pkts_on_overflow; int /*<<< orphan*/  queue; } ;
struct TYPE_7__ {int /*<<< orphan*/  pkt; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ FifoMessage ;
typedef  TYPE_2__ FifoContext ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  AV_THREAD_MESSAGE_NONBLOCK ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FIFO_FLUSH_OUTPUT ; 
 int /*<<< orphan*/  FIFO_WRITE_PACKET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *avf, AVPacket *pkt)
{
    FifoContext *fifo = avf->priv_data;
    FifoMessage msg = {.type = pkt ? FIFO_WRITE_PACKET : FIFO_FLUSH_OUTPUT};
    int ret;

    if (pkt) {
        FUNC1(&msg.pkt);
        ret = FUNC3(&msg.pkt,pkt);
        if (ret < 0)
            return ret;
    }

    ret = FUNC5(fifo->queue, &msg,
                                       fifo->drop_pkts_on_overflow ?
                                       AV_THREAD_MESSAGE_NONBLOCK : 0);
    if (ret == FUNC0(EAGAIN)) {
        uint8_t overflow_set = 0;

        /* Queue is full, set fifo->overflow_flag to 1
         * to let consumer thread know the queue should
         * be flushed. */
        FUNC6(&fifo->overflow_flag_lock);
        if (!fifo->overflow_flag)
            fifo->overflow_flag = overflow_set = 1;
        FUNC7(&fifo->overflow_flag_lock);

        if (overflow_set)
            FUNC2(avf, AV_LOG_WARNING, "FIFO queue full\n");
        ret = 0;
        goto fail;
    } else if (ret < 0) {
        goto fail;
    }

    return ret;
fail:
    if (pkt)
        FUNC4(&msg.pkt);
    return ret;
}