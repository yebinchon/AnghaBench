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
typedef  int /*<<< orphan*/  zmq_msg_t ;
struct TYPE_5__ {int /*<<< orphan*/  responder; } ;
typedef  TYPE_1__ ZMQContext ;
struct TYPE_6__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ZMQ_DONTWAIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static int FUNC10(AVFilterContext *ctx, char **buf, int *buf_size)
{
    ZMQContext *zmq = ctx->priv;
    zmq_msg_t msg;
    int ret = 0;

    if (FUNC6(&msg) == -1) {
        FUNC1(ctx, AV_LOG_WARNING,
               "Could not initialize receive message: %s\n", FUNC9(errno));
        return AVERROR_EXTERNAL;
    }

    if (FUNC7(&msg, zmq->responder, ZMQ_DONTWAIT) == -1) {
        if (errno != EAGAIN)
            FUNC1(ctx, AV_LOG_WARNING,
                   "Could not receive message: %s\n", FUNC9(errno));
        ret = AVERROR_EXTERNAL;
        goto end;
    }

    *buf_size = FUNC8(&msg) + 1;
    *buf = FUNC2(*buf_size);
    if (!*buf) {
        ret = FUNC0(ENOMEM);
        goto end;
    }
    FUNC3(*buf, FUNC5(&msg), *buf_size - 1);
    (*buf)[*buf_size-1] = 0;

end:
    FUNC4(&msg);
    return ret;
}