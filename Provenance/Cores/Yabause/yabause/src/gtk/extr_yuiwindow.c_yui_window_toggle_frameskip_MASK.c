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
typedef  scalar_t__ gboolean ;
struct TYPE_3__ {int /*<<< orphan*/  action_group; } ;
typedef  TYPE_1__ YuiWindow ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkAction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(GtkWidget * w, YuiWindow * yui) {
	GtkAction * action = FUNC3(yui->action_group, "frameskip");
	gboolean active = FUNC4(FUNC2(action));

	if (active)
		FUNC1 ();
	else
		FUNC0 ();
}