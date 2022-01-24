#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* dsp; int /*<<< orphan*/  pvq; int /*<<< orphan*/ * imdct; } ;
typedef  TYPE_1__ CeltFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(CeltFrame **f)
{
    CeltFrame *frm = *f;
    int i;

    if (!frm)
        return;

    for (i = 0; i < FUNC0(frm->imdct); i++)
        FUNC3(&frm->imdct[i]);

    FUNC2(&frm->pvq);

    FUNC1(&frm->dsp);
    FUNC1(f);
}