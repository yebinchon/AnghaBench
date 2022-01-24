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
struct TYPE_8__ {int rate; } ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_1__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;
typedef  TYPE_2__ ASRContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CH_LAYOUT_MONO ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_S16 ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx)
{
    ASRContext *s = ctx->priv;
    int sample_rates[] = { s->rate, -1 };
    int ret;

    AVFilterFormats *formats = NULL;
    AVFilterChannelLayouts *layout = NULL;

    if ((ret = FUNC1                 (&formats, AV_SAMPLE_FMT_S16                 )) < 0 ||
        (ret = FUNC4         (ctx     , formats                           )) < 0 ||
        (ret = FUNC0         (&layout , AV_CH_LAYOUT_MONO                 )) < 0 ||
        (ret = FUNC3 (ctx     , layout                            )) < 0 ||
        (ret = FUNC5     (ctx     , FUNC2(sample_rates) )) < 0)
        return ret;

    return 0;
}