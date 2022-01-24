#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
typedef  enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_9__ {int /*<<< orphan*/  output_pads; int /*<<< orphan*/ * graph; } ;
typedef  int /*<<< orphan*/  AVFilterGraph ;
typedef  TYPE_1__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilter ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_FILTER_NOT_FOUND ; 
 int AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  AV_OPT_SEARCH_CHILDREN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  INT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char const*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(int64_t start_time, int64_t duration,
                       AVFilterContext **last_filter, int *pad_idx,
                       const char *filter_name)
{
    AVFilterGraph *graph = (*last_filter)->graph;
    AVFilterContext *ctx;
    const AVFilter *trim;
    enum AVMediaType type = FUNC7((*last_filter)->output_pads, *pad_idx);
    const char *name = (type == AVMEDIA_TYPE_VIDEO) ? "trim" : "atrim";
    int ret = 0;

    if (duration == INT64_MAX && start_time == AV_NOPTS_VALUE)
        return 0;

    trim = FUNC3(name);
    if (!trim) {
        FUNC1(NULL, AV_LOG_ERROR, "%s filter not present, cannot limit "
               "recording time.\n", name);
        return AVERROR_FILTER_NOT_FOUND;
    }

    ctx = FUNC4(graph, trim, filter_name);
    if (!ctx)
        return FUNC0(ENOMEM);

    if (duration != INT64_MAX) {
        ret = FUNC2(ctx, "durationi", duration,
                                AV_OPT_SEARCH_CHILDREN);
    }
    if (ret >= 0 && start_time != AV_NOPTS_VALUE) {
        ret = FUNC2(ctx, "starti", start_time,
                                AV_OPT_SEARCH_CHILDREN);
    }
    if (ret < 0) {
        FUNC1(ctx, AV_LOG_ERROR, "Error configuring the %s filter", name);
        return ret;
    }

    ret = FUNC5(ctx, NULL);
    if (ret < 0)
        return ret;

    ret = FUNC6(*last_filter, *pad_idx, ctx, 0);
    if (ret < 0)
        return ret;

    *last_filter = ctx;
    *pad_idx     = 0;
    return 0;
}