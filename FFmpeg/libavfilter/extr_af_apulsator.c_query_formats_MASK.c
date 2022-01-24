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
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  int /*<<< orphan*/  AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_DBL ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx)
{
    AVFilterChannelLayouts *layout = NULL;
    AVFilterFormats *formats = NULL;
    int ret;

    if ((ret = FUNC1                 (&formats, AV_SAMPLE_FMT_DBL  )) < 0 ||
        (ret = FUNC4         (ctx     , formats            )) < 0 ||
        (ret = FUNC0         (&layout , AV_CH_LAYOUT_STEREO)) < 0 ||
        (ret = FUNC3 (ctx     , layout             )) < 0)
        return ret;

    formats = FUNC2();
    return FUNC5(ctx, formats);
}