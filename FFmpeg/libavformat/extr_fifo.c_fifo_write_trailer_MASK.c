#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int write_trailer_ret; int /*<<< orphan*/  writer_thread; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ FifoContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *avf)
{
    FifoContext *fifo= avf->priv_data;
    int ret;

    FUNC3(fifo->queue, AVERROR_EOF);

    ret = FUNC4(fifo->writer_thread, NULL);
    if (ret < 0) {
        FUNC2(avf, AV_LOG_ERROR, "pthread join error: %s\n",
               FUNC1(FUNC0(ret)));
        return FUNC0(ret);
    }

    ret = fifo->write_trailer_ret;
    return ret;
}