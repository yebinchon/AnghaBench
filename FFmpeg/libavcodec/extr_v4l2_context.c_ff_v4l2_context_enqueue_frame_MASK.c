#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int draining; } ;
typedef  TYPE_1__ V4L2m2mContext ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ V4L2Context ;
typedef  int /*<<< orphan*/  V4L2Buffer ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 

int FUNC8(V4L2Context* ctx, const AVFrame* frame)
{
    V4L2m2mContext *s = FUNC2(ctx);
    V4L2Buffer* avbuf;
    int ret;

    if (!frame) {
        ret = FUNC7(ctx);
        if (ret)
            FUNC1(FUNC5(ctx), AV_LOG_ERROR, "%s stop_encode\n", ctx->name);
        s->draining= 1;
        return 0;
    }

    avbuf = FUNC6(ctx);
    if (!avbuf)
        return FUNC0(ENOMEM);

    ret = FUNC3(frame, avbuf);
    if (ret)
        return ret;

    return FUNC4(avbuf);
}