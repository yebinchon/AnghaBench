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
struct TYPE_6__ {double LowerBound; double UpperBound; int /*<<< orphan*/  HintDescriptor; } ;
struct TYPE_5__ {TYPE_2__* PortRangeHints; } ;
typedef  TYPE_2__ LADSPA_PortRangeHint ;
typedef  double LADSPA_Data ;
typedef  TYPE_3__ LADSPAContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 double FUNC10 (double) ; 
 double FUNC11 (double const) ; 

__attribute__((used)) static void FUNC12(LADSPAContext *s, int ctl,
                                  unsigned long *map, LADSPA_Data *values)
{
    const LADSPA_PortRangeHint *h = s->desc->PortRangeHints + map[ctl];
    const LADSPA_Data lower = h->LowerBound;
    const LADSPA_Data upper = h->UpperBound;

    if (FUNC8(h->HintDescriptor)) {
        values[ctl] = lower;
    } else if (FUNC6(h->HintDescriptor)) {
        values[ctl] = upper;
    } else if (FUNC0(h->HintDescriptor)) {
        values[ctl] = 0.0;
    } else if (FUNC1(h->HintDescriptor)) {
        values[ctl] = 1.0;
    } else if (FUNC2(h->HintDescriptor)) {
        values[ctl] = 100.0;
    } else if (FUNC3(h->HintDescriptor)) {
        values[ctl] = 440.0;
    } else if (FUNC5(h->HintDescriptor)) {
        if (FUNC9(h->HintDescriptor))
            values[ctl] = FUNC10(FUNC11(lower) * 0.75 + FUNC11(upper) * 0.25);
        else
            values[ctl] = lower * 0.75 + upper * 0.25;
    } else if (FUNC7(h->HintDescriptor)) {
        if (FUNC9(h->HintDescriptor))
            values[ctl] = FUNC10(FUNC11(lower) * 0.5 + FUNC11(upper) * 0.5);
        else
            values[ctl] = lower * 0.5 + upper * 0.5;
    } else if (FUNC4(h->HintDescriptor)) {
        if (FUNC9(h->HintDescriptor))
            values[ctl] = FUNC10(FUNC11(lower) * 0.25 + FUNC11(upper) * 0.75);
        else
            values[ctl] = lower * 0.25 + upper * 0.75;
    }
}