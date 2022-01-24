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
struct TYPE_4__ {int /*<<< orphan*/  key; int /*<<< orphan*/  group; int /*<<< orphan*/  keyfile; } ;
typedef  TYPE_1__ YuiCheckButton ;
typedef  int /*<<< orphan*/  GtkToggleButton ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t YUI_CHECK_BUTTON_CHANGED_SIGNAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * yui_check_button_signals ; 

__attribute__((used)) static void FUNC4(GtkToggleButton * button, YuiCheckButton * ycb) {
	FUNC1(ycb->keyfile, ycb->group, ycb->key,
	                       FUNC3(button));
	FUNC2(FUNC0(ycb), yui_check_button_signals[YUI_CHECK_BUTTON_CHANGED_SIGNAL], 0);
}