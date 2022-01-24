#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* channel_layouts; } ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  int /*<<< orphan*/  AVFilterContext ;
typedef  TYPE_1__ AVFilterChannelLayouts ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_DBL ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_DBLP ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_FLT ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_FLTP ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFilterContext *ctx)
{
    AVFilterFormats *formats = NULL;
    AVFilterChannelLayouts *layouts;
    int ret;

    layouts = FUNC3();
    if (!layouts) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    if ((ret = FUNC2(&formats, AV_SAMPLE_FMT_FLT ))          < 0 ||
        (ret = FUNC2(&formats, AV_SAMPLE_FMT_FLTP))          < 0 ||
        (ret = FUNC2(&formats, AV_SAMPLE_FMT_DBL ))          < 0 ||
        (ret = FUNC2(&formats, AV_SAMPLE_FMT_DBLP))          < 0 ||
        (ret = FUNC6        (ctx, formats))          < 0 ||
        (ret = FUNC5(ctx, layouts))          < 0 ||
        (ret = FUNC7(ctx, FUNC4())) < 0)
        goto fail;
    return 0;
fail:
    if (layouts)
        FUNC1(&layouts->channel_layouts);
    FUNC1(&layouts);
    return ret;
}