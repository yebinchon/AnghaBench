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
struct TYPE_6__ {int /*<<< orphan*/  writer_thread; } ;
typedef  TYPE_1__ FifoContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fifo_consumer_thread ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *avf)
{
    FifoContext * fifo = avf->priv_data;
    int ret;

    ret = FUNC3(&fifo->writer_thread, NULL, fifo_consumer_thread, avf);
    if (ret) {
        FUNC2(avf, AV_LOG_ERROR, "Failed to start thread: %s\n",
               FUNC1(FUNC0(ret)));
        ret = FUNC0(ret);
    }

    return ret;
}