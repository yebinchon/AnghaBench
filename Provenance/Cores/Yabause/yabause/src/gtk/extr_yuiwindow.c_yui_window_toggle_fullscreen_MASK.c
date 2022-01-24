#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  menu; int /*<<< orphan*/  action_group; } ;
typedef  TYPE_2__ YuiWindow ;
struct TYPE_7__ {unsigned int width; unsigned int height; } ;
struct TYPE_9__ {TYPE_1__ allocation; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkAction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(GtkWidget * w, YuiWindow * yui) {
	GtkAction * action = FUNC3(yui->action_group, "fullscreen");
	static unsigned int beforefswidth = 1;
	static unsigned int beforefsheight = 1;

	if (FUNC4(FUNC0(action))) {
		beforefswidth = FUNC1(yui)->allocation.width;
		beforefsheight = FUNC1(yui)->allocation.height;
		FUNC5(yui->menu);
		FUNC7(FUNC2(yui));
	} else {
		FUNC9(FUNC2(yui));
		FUNC6(yui->menu);
		FUNC8(FUNC2(yui), beforefswidth, beforefsheight);
	}
}