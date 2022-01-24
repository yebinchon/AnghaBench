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
struct TYPE_6__ {TYPE_3__* param; int /*<<< orphan*/  contrast; int /*<<< orphan*/  var_values; int /*<<< orphan*/  contrast_pexpr; } ;
typedef  TYPE_1__ EQContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(EQContext *eq)
{
    eq->contrast = FUNC0(FUNC1(eq->contrast_pexpr, eq->var_values, eq), -1000.0, 1000.0);
    eq->param[0].contrast = eq->contrast;
    eq->param[0].lut_clean = 0;
    FUNC2(&eq->param[0], eq);
}