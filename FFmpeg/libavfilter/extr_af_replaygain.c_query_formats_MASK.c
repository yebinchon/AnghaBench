#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sample_rate; } ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  int /*<<< orphan*/  AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_FLT ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* freqinfos ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx)
{
    AVFilterFormats *formats = NULL;
    AVFilterChannelLayouts *layout = NULL;
    int i, ret;

    if ((ret = FUNC2                 (&formats, AV_SAMPLE_FMT_FLT  )) < 0 ||
        (ret = FUNC4         (ctx     , formats            )) < 0 ||
        (ret = FUNC1         (&layout , AV_CH_LAYOUT_STEREO)) < 0 ||
        (ret = FUNC3 (ctx     , layout             )) < 0)
        return ret;

    formats = NULL;
    for (i = 0; i < FUNC0(freqinfos); i++) {
        if ((ret = FUNC2(&formats, freqinfos[i].sample_rate)) < 0)
            return ret;
    }

    return FUNC5(ctx, formats);
}