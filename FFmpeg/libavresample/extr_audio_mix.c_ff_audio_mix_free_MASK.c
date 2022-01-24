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
struct TYPE_4__ {int /*<<< orphan*/  matrix_flt; int /*<<< orphan*/  matrix_q15; int /*<<< orphan*/  matrix_q8; int /*<<< orphan*/ * matrix; } ;
typedef  TYPE_1__ AudioMix ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(AudioMix **am_p)
{
    AudioMix *am;

    if (!*am_p)
        return;
    am = *am_p;

    if (am->matrix) {
        FUNC0(am->matrix[0]);
        am->matrix = NULL;
    }
    FUNC2(am->matrix_q8,  0, sizeof(am->matrix_q8 ));
    FUNC2(am->matrix_q15, 0, sizeof(am->matrix_q15));
    FUNC2(am->matrix_flt, 0, sizeof(am->matrix_flt));

    FUNC1(am_p);
}