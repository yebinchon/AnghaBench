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
typedef  int /*<<< orphan*/  AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilter ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*) ; 

int FUNC4(AVFilterContext **filt_ctx, const AVFilter *filt,
                                 const char *name, const char *args, void *opaque,
                                 AVFilterGraph *graph_ctx)
{
    int ret;

    *filt_ctx = FUNC2(graph_ctx, filt, name);
    if (!*filt_ctx)
        return FUNC0(ENOMEM);

    ret = FUNC3(*filt_ctx, args);
    if (ret < 0)
        goto fail;

    return 0;

fail:
    if (*filt_ctx)
        FUNC1(*filt_ctx);
    *filt_ctx = NULL;
    return ret;
}