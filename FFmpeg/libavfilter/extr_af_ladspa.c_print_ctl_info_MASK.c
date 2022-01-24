#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* desc; } ;
struct TYPE_6__ {int /*<<< orphan*/  HintDescriptor; scalar_t__ UpperBound; scalar_t__ LowerBound; } ;
struct TYPE_5__ {int /*<<< orphan*/ * PortNames; TYPE_2__* PortRangeHints; } ;
typedef  TYPE_2__ LADSPA_PortRangeHint ;
typedef  scalar_t__ LADSPA_Data ;
typedef  TYPE_3__ LADSPAContext ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*,...) ; 

__attribute__((used)) static void FUNC8(AVFilterContext *ctx, int level,
                           LADSPAContext *s, int ctl, unsigned long *map,
                           LADSPA_Data *values, int print)
{
    const LADSPA_PortRangeHint *h = s->desc->PortRangeHints + map[ctl];

    FUNC7(ctx, level, "c%i: %s [", ctl, s->desc->PortNames[map[ctl]]);

    if (FUNC6(h->HintDescriptor)) {
        FUNC7(ctx, level, "toggled (1 or 0)");

        if (FUNC2(h->HintDescriptor))
            FUNC7(ctx, level, " (default %i)", (int)values[ctl]);
    } else {
        if (FUNC3(h->HintDescriptor)) {
            FUNC7(ctx, level, "<int>");

            if (FUNC1(h->HintDescriptor))
                FUNC7(ctx, level, ", min: %i", (int)h->LowerBound);

            if (FUNC0(h->HintDescriptor))
                FUNC7(ctx, level, ", max: %i", (int)h->UpperBound);

            if (print)
                FUNC7(ctx, level, " (value %d)", (int)values[ctl]);
            else if (FUNC2(h->HintDescriptor))
                FUNC7(ctx, level, " (default %d)", (int)values[ctl]);
        } else {
            FUNC7(ctx, level, "<float>");

            if (FUNC1(h->HintDescriptor))
                FUNC7(ctx, level, ", min: %f", h->LowerBound);

            if (FUNC0(h->HintDescriptor))
                FUNC7(ctx, level, ", max: %f", h->UpperBound);

            if (print)
                FUNC7(ctx, level, " (value %f)", values[ctl]);
            else if (FUNC2(h->HintDescriptor))
                FUNC7(ctx, level, " (default %f)", values[ctl]);
        }

        if (FUNC5(h->HintDescriptor))
            FUNC7(ctx, level, ", multiple of sample rate");

        if (FUNC4(h->HintDescriptor))
            FUNC7(ctx, level, ", logarithmic scale");
    }

    FUNC7(ctx, level, "]\n");
}