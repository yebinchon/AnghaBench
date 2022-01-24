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
struct TYPE_8__ {int channel_layout; int sample_rate; } ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef  TYPE_1__ AVFilterContext ;
typedef  TYPE_2__ ANullContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx)
{
    ANullContext *null = ctx->priv;
    int64_t chlayouts[] = { null->channel_layout, -1 };
    int sample_rates[] = { null->sample_rate, -1 };
    int ret;

    if ((ret = FUNC4         (ctx, FUNC1              (AVMEDIA_TYPE_AUDIO))) < 0 ||
        (ret = FUNC3 (ctx, FUNC0 (chlayouts         ))) < 0 ||
        (ret = FUNC5     (ctx, FUNC2         (sample_rates      ))) < 0)
        return ret;

    return 0;
}