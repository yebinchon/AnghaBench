#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_5__ {TYPE_1__* yui; } ;
typedef  TYPE_2__ YuiVdp2 ;
struct TYPE_4__ {int /*<<< orphan*/  action_group; } ;
typedef  int /*<<< orphan*/  GtkCellRendererToggle ;
typedef  int /*<<< orphan*/  GtkAction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,char*,int*) ; 
 int /*<<< orphan*/ * yui_vdp2_action_names ; 

__attribute__((used)) static void FUNC5(GtkCellRendererToggle * crt, const gchar * path, YuiVdp2 * yv) {
	int val;
	GtkAction * action = NULL;

	FUNC4(path, "%d", &val);
	if (! yui_vdp2_action_names[val]) return;

	action = FUNC1(yv->yui->action_group, yui_vdp2_action_names[val]);
	FUNC3(FUNC0(action), ! FUNC2(FUNC0(action)));
}