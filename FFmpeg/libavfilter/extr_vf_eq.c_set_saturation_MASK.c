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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ lut_clean; int /*<<< orphan*/  contrast; } ;
struct TYPE_6__ {TYPE_3__* param; int /*<<< orphan*/  saturation; int /*<<< orphan*/  var_values; int /*<<< orphan*/  saturation_pexpr; } ;
typedef  TYPE_1__ EQContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(EQContext *eq)
{
    int i;

    eq->saturation = FUNC0(FUNC1(eq->saturation_pexpr, eq->var_values, eq), 0.0, 3.0);

    for (i = 1; i < 3; i++) {
        eq->param[i].contrast = eq->saturation;
        eq->param[i].lut_clean = 0;
        FUNC2(&eq->param[i], eq);
    }
}