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
struct TYPE_3__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  GtkSpinButton ;
typedef  int /*<<< orphan*/  GtkAdjustment ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double,double,double,double,double,double) ; 
 double FUNC3 (int /*<<< orphan*/ *) ; 
 double FUNC4 (int /*<<< orphan*/ *) ; 
 double FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(signal_user_data_t *ud, char *name, double val, double min, double max)
{
    GtkSpinButton *spin;
    GtkAdjustment *adj;
    double step, page, page_sz;

    spin = FUNC1(FUNC0(ud->builder, name));

    adj = FUNC6(spin);
    step = FUNC5(adj);
    page = FUNC3(adj);
    page_sz = FUNC4(adj);

    FUNC2(adj, val, min, max, step, page, page_sz);
}