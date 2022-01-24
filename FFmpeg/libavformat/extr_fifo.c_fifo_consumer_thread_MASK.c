#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_18__ {TYPE_4__* priv_data; } ;
struct TYPE_17__ {int /*<<< orphan*/  write_trailer_ret; int /*<<< orphan*/  overflow_flag_lock; scalar_t__ overflow_flag; scalar_t__ restart_with_keyframe; int /*<<< orphan*/ * queue; } ;
struct TYPE_14__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_16__ {TYPE_1__ member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_15__ {scalar_t__ recovery_nr; int drop_until_keyframe; TYPE_5__* avf; } ;
typedef  TYPE_2__ FifoThreadContext ;
typedef  TYPE_3__ FifoMessage ;
typedef  TYPE_4__ FifoContext ;
typedef  int /*<<< orphan*/  AVThreadMessageQueue ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  FIFO_WRITE_HEADER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC5 (TYPE_2__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC10(void *data)
{
    AVFormatContext *avf = data;
    FifoContext *fifo = avf->priv_data;
    AVThreadMessageQueue *queue = fifo->queue;
    FifoMessage msg = {FIFO_WRITE_HEADER, 0};
    int ret;

    FifoThreadContext fifo_thread_ctx;
    FUNC7(&fifo_thread_ctx, 0, sizeof(FifoThreadContext));
    fifo_thread_ctx.avf = avf;

    while (1) {
        uint8_t just_flushed = 0;

        if (!fifo_thread_ctx.recovery_nr)
            ret = FUNC4(&fifo_thread_ctx, &msg);

        if (ret < 0 || fifo_thread_ctx.recovery_nr > 0) {
            int rec_ret = FUNC5(&fifo_thread_ctx, &msg, ret);
            if (rec_ret < 0) {
                FUNC3(queue, rec_ret);
                break;
            }
        }

        /* If the queue is full at the moment when fifo_write_packet
         * attempts to insert new message (packet) to the queue,
         * it sets the fifo->overflow_flag to 1 and drops packet.
         * Here in consumer thread, the flag is checked and if it is
         * set, the queue is flushed and flag cleared. */
        FUNC8(&fifo->overflow_flag_lock);
        if (fifo->overflow_flag) {
            FUNC1(queue);
            if (fifo->restart_with_keyframe)
                fifo_thread_ctx.drop_until_keyframe = 1;
            fifo->overflow_flag = 0;
            just_flushed = 1;
        }
        FUNC9(&fifo->overflow_flag_lock);

        if (just_flushed)
            FUNC0(avf, AV_LOG_INFO, "FIFO queue flushed\n");

        ret = FUNC2(queue, &msg, 0);
        if (ret < 0) {
            FUNC3(queue, ret);
            break;
        }
    }

    fifo->write_trailer_ret = FUNC6(&fifo_thread_ctx);

    return NULL;
}