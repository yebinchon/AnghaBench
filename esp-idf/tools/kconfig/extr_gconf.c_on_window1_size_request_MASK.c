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
typedef  int /*<<< orphan*/  gpointer ;
typedef  int gint ;
struct TYPE_3__ {int /*<<< orphan*/ * window; } ;
typedef  TYPE_1__ GtkWidget ;
typedef  int /*<<< orphan*/  GtkRequisition ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  main_wnd ; 
 int /*<<< orphan*/  vpaned ; 

void
FUNC5(GtkWidget * widget,
			GtkRequisition * requisition, gpointer user_data)
{
	static gint old_h;
	gint w, h;

	if (widget->window == NULL)
		FUNC4(FUNC1(main_wnd), &w, &h);
	else
		FUNC2(widget->window, &w, &h);

	if (h == old_h)
		return;
	old_h = h;

	FUNC3(FUNC0(vpaned), 2 * h / 3);
}