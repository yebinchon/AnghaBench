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
struct TYPE_3__ {int nb_units; int nb_units_allocated; int /*<<< orphan*/ * units; } ;
typedef  int /*<<< orphan*/  CodedBitstreamUnit ;
typedef  TYPE_1__ CodedBitstreamFragment ;
typedef  int /*<<< orphan*/  CodedBitstreamContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(CodedBitstreamContext *ctx,
                           CodedBitstreamFragment *frag,
                           int position)
{
    CodedBitstreamUnit *units;

    if (frag->nb_units < frag->nb_units_allocated) {
        units = frag->units;

        if (position < frag->nb_units)
            FUNC4(units + position + 1, units + position,
                    (frag->nb_units - position) * sizeof(*units));
    } else {
        units = FUNC2(frag->nb_units + 1, sizeof(*units));
        if (!units)
            return FUNC0(ENOMEM);

        ++frag->nb_units_allocated;

        if (position > 0)
            FUNC3(units, frag->units, position * sizeof(*units));

        if (position < frag->nb_units)
            FUNC3(units + position + 1, frag->units + position,
                   (frag->nb_units - position) * sizeof(*units));
    }

    FUNC5(units + position, 0, sizeof(*units));

    if (units != frag->units) {
        FUNC1(frag->units);
        frag->units = units;
    }

    ++frag->nb_units;

    return 0;
}