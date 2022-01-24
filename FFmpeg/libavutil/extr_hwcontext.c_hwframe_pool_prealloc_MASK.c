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
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {int initial_pool_size; } ;
typedef  TYPE_1__ AVHWFramesContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ***) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(AVBufferRef *ref)
{
    AVHWFramesContext *ctx = (AVHWFramesContext*)ref->data;
    AVFrame **frames;
    int i, ret = 0;

    frames = FUNC5(ctx->initial_pool_size, sizeof(*frames));
    if (!frames)
        return FUNC0(ENOMEM);

    for (i = 0; i < ctx->initial_pool_size; i++) {
        frames[i] = FUNC1();
        if (!frames[i])
            goto fail;

        ret = FUNC4(ref, frames[i], 0);
        if (ret < 0)
            goto fail;
    }

fail:
    for (i = 0; i < ctx->initial_pool_size; i++)
        FUNC2(&frames[i]);
    FUNC3(&frames);

    return ret;
}