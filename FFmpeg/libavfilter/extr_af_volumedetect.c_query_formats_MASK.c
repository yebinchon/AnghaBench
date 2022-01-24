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
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  int /*<<< orphan*/  AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_SAMPLE_FMT_NONE 130 
#define  AV_SAMPLE_FMT_S16 129 
#define  AV_SAMPLE_FMT_S16P 128 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVFilterContext *ctx)
{
    static const enum AVSampleFormat sample_fmts[] = {
        AV_SAMPLE_FMT_S16,
        AV_SAMPLE_FMT_S16P,
        AV_SAMPLE_FMT_NONE
    };
    AVFilterFormats *formats;
    AVFilterChannelLayouts *layouts;
    int ret;

    if (!(formats = FUNC2(sample_fmts)))
        return FUNC0(ENOMEM);

    layouts = FUNC1();
    if (!layouts)
        return FUNC0(ENOMEM);
    ret = FUNC3(ctx, layouts);
    if (ret < 0)
        return ret;

    return FUNC4(ctx, formats);
}