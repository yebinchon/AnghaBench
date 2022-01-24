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
struct TYPE_8__ {int nb_inputs; TYPE_1__** inputs; } ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_2__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx)
{
    AVFilterFormats *formats, *rates = NULL;
    AVFilterChannelLayouts *layouts = NULL;
    int ret, i;

    for (i = 0; i < ctx->nb_inputs; i++) {
        formats = FUNC1(ctx->inputs[i]->type);
        if ((ret = FUNC4(ctx, formats)) < 0)
            return ret;

        if (ctx->inputs[i]->type == AVMEDIA_TYPE_AUDIO) {
            rates = FUNC2();
            if ((ret = FUNC5(ctx, rates)) < 0)
                return ret;
            layouts = FUNC0();
            if ((ret = FUNC3(ctx, layouts)) < 0)
                return ret;
        }
    }

    return 0;
}