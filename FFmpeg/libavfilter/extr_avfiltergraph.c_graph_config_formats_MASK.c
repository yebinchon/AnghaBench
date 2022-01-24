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
typedef  int /*<<< orphan*/  AVClass ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(AVFilterGraph *graph, AVClass *log_ctx)
{
    int ret;

    /* find supported formats from sub-filters, and merge along links */
    while ((ret = FUNC3(graph, log_ctx)) == FUNC0(EAGAIN))
        FUNC1(graph, AV_LOG_DEBUG, "query_formats not finished\n");
    if (ret < 0)
        return ret;

    /* Once everything is merged, it's possible that we'll still have
     * multiple valid media format choices. We try to minimize the amount
     * of format conversion inside filters */
    if ((ret = FUNC4(graph)) < 0)
        return ret;

    /* for audio filters, ensure the best format, sample rate and channel layout
     * is selected */
    FUNC6(graph);
    FUNC7(graph);
    FUNC5(graph);

    if ((ret = FUNC2(graph)) < 0)
        return ret;

    return 0;
}