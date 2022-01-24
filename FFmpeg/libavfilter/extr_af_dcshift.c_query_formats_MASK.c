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
#define  AV_SAMPLE_FMT_NONE 129 
#define  AV_SAMPLE_FMT_S32P 128 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVFilterContext *ctx)
{
    AVFilterChannelLayouts *layouts;
    AVFilterFormats *formats;
    static const enum AVSampleFormat sample_fmts[] = {
        AV_SAMPLE_FMT_S32P, AV_SAMPLE_FMT_NONE
    };
    int ret;

    layouts = FUNC1();
    if (!layouts)
        return FUNC0(ENOMEM);
    ret = FUNC4(ctx, layouts);
    if (ret < 0)
        return ret;

    formats = FUNC3(sample_fmts);
    if (!formats)
        return FUNC0(ENOMEM);
    ret = FUNC5(ctx, formats);
    if (ret < 0)
        return ret;

    formats = FUNC2();
    if (!formats)
        return FUNC0(ENOMEM);
    return FUNC6(ctx, formats);
}