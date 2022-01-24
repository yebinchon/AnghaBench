#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ done; } ;
typedef  TYPE_1__ V4L2Context ;
typedef  int /*<<< orphan*/  V4L2Buffer ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int) ; 

int FUNC3(V4L2Context* ctx, AVFrame* frame, int timeout)
{
    V4L2Buffer* avbuf = NULL;

    /*
     * timeout=-1 blocks until:
     *  1. decoded frame available
     *  2. an input buffer is ready to be dequeued
     */
    avbuf = FUNC2(ctx, timeout);
    if (!avbuf) {
        if (ctx->done)
            return AVERROR_EOF;

        return FUNC0(EAGAIN);
    }

    return FUNC1(frame, avbuf);
}