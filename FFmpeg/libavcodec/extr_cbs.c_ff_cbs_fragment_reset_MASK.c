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
struct TYPE_3__ {int nb_units; scalar_t__ data_bit_padding; scalar_t__ data_size; int /*<<< orphan*/ * data; int /*<<< orphan*/  data_ref; int /*<<< orphan*/ * units; } ;
typedef  TYPE_1__ CodedBitstreamFragment ;
typedef  int /*<<< orphan*/  CodedBitstreamContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(CodedBitstreamContext *ctx,
                           CodedBitstreamFragment *frag)
{
    int i;

    for (i = 0; i < frag->nb_units; i++)
        FUNC1(ctx, &frag->units[i]);
    frag->nb_units = 0;

    FUNC0(&frag->data_ref);
    frag->data             = NULL;
    frag->data_size        = 0;
    frag->data_bit_padding = 0;
}