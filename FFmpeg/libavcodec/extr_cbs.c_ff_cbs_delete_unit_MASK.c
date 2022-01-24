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
struct TYPE_3__ {int nb_units; int /*<<< orphan*/ * units; } ;
typedef  TYPE_1__ CodedBitstreamFragment ;
typedef  int /*<<< orphan*/  CodedBitstreamContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC3(CodedBitstreamContext *ctx,
                        CodedBitstreamFragment *frag,
                        int position)
{
    FUNC0(0 <= position && position < frag->nb_units
                             && "Unit to be deleted not in fragment.");

    FUNC1(ctx, &frag->units[position]);

    --frag->nb_units;

    if (frag->nb_units > 0)
        FUNC2(frag->units + position,
                frag->units + position + 1,
                (frag->nb_units - position) * sizeof(*frag->units));
}