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
struct TYPE_8__ {scalar_t__ channel_layouts; scalar_t__ sample_rates; scalar_t__ formats; } ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef  TYPE_1__ AVFilterContext ;
typedef  TYPE_2__ AFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (TYPE_1__*,scalar_t__) ; 
 int FUNC4 (TYPE_1__*,scalar_t__) ; 
 int FUNC5 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx)
{
    AFormatContext *s = ctx->priv;
    int ret;

    ret = FUNC4(ctx, s->formats ? s->formats :
                                            FUNC1(AVMEDIA_TYPE_AUDIO));
    if (ret < 0)
        return ret;
    ret = FUNC5(ctx, s->sample_rates ? s->sample_rates :
                                                     FUNC2());
    if (ret < 0)
        return ret;
    return FUNC3(ctx, s->channel_layouts ? s->channel_layouts :
                                                            FUNC0());
}