#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  AVFilterGraph ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int FUNC5 (int /*<<< orphan*/ *,void*) ; 

int FUNC6(AVFilterGraph *graphctx, void *log_ctx)
{
    int ret;

    if ((ret = FUNC1(graphctx, log_ctx)))
        return ret;
    if ((ret = FUNC5(graphctx, log_ctx)) < 0)
        return ret;
    if ((ret = FUNC2(graphctx, log_ctx)))
        return ret;
    if ((ret = FUNC3(graphctx, log_ctx)))
        return ret;
    if ((ret = FUNC0(graphctx, log_ctx)))
        return ret;
    if ((ret = FUNC4(graphctx, log_ctx)))
        return ret;

    return 0;
}