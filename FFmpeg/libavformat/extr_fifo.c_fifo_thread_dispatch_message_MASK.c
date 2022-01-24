#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int type; int /*<<< orphan*/  pkt; } ;
struct TYPE_8__ {int /*<<< orphan*/  header_written; } ;
typedef  TYPE_1__ FifoThreadContext ;
typedef  TYPE_2__ FifoMessage ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
#define  FIFO_FLUSH_OUTPUT 130 
#define  FIFO_WRITE_HEADER 129 
#define  FIFO_WRITE_PACKET 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(FifoThreadContext *ctx, FifoMessage *msg)
{
    int ret = FUNC0(EINVAL);

    if (!ctx->header_written) {
        ret = FUNC3(ctx);
        if (ret < 0)
            return ret;
    }

    switch(msg->type) {
    case FIFO_WRITE_HEADER:
        FUNC1(ret >= 0);
        return ret;
    case FIFO_WRITE_PACKET:
        return FUNC4(ctx, &msg->pkt);
    case FIFO_FLUSH_OUTPUT:
        return FUNC2(ctx);
    }

    FUNC1(0);
    return FUNC0(EINVAL);
}