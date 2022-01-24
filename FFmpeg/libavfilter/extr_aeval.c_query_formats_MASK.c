#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int chlayout; int sample_rate; int /*<<< orphan*/  nb_channels; } ;
typedef  TYPE_1__ EvalContext ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_2__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_SAMPLE_FMT_DBLP 129 
#define  AV_SAMPLE_FMT_NONE 128 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int*) ; 
 int /*<<< orphan*/ * FUNC3 (int const*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVFilterContext *ctx)
{
    EvalContext *eval = ctx->priv;
    static const enum AVSampleFormat sample_fmts[] = { AV_SAMPLE_FMT_DBLP, AV_SAMPLE_FMT_NONE };
    int64_t chlayouts[] = { eval->chlayout ? eval->chlayout : FUNC1(eval->nb_channels) , -1 };
    int sample_rates[] = { eval->sample_rate, -1 };
    AVFilterFormats *formats;
    AVFilterChannelLayouts *layouts;
    int ret;

    formats = FUNC3(sample_fmts);
    if (!formats)
        return FUNC0(ENOMEM);
    ret = FUNC5 (ctx, formats);
    if (ret < 0)
        return ret;

    layouts = FUNC2(chlayouts);
    if (!layouts)
        return FUNC0(ENOMEM);
    ret = FUNC4(ctx, layouts);
    if (ret < 0)
        return ret;

    formats = FUNC3(sample_rates);
    if (!formats)
        return FUNC0(ENOMEM);
    return FUNC6(ctx, formats);
}