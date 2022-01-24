#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * pixbuf; } ;
typedef  TYPE_1__ YuiViewer ;
typedef  TYPE_1__ GtkWidget ;

/* Variables and functions */
 int GDK_BUTTON_PRESS_MASK ; 
 int GDK_BUTTON_RELEASE_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GTK_STOCK_SAVE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  my_popup_handler ; 
 int /*<<< orphan*/  yui_viewer_expose ; 
 int /*<<< orphan*/  yui_viewer_save ; 

__attribute__((used)) static void FUNC10 (YuiViewer * yv) {
	GtkWidget * menu;
	GtkWidget * item;

	FUNC8(FUNC1(yv), GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK);

	menu = FUNC6();
	item = FUNC5(GTK_STOCK_SAVE, NULL);

	FUNC7(FUNC0(menu), item);

	FUNC9(menu);

	FUNC4(yv, "button-press-event", FUNC2(my_popup_handler), menu);
	FUNC3(yv, "expose-event", FUNC2(yui_viewer_expose), NULL);
	FUNC4(item, "activate", FUNC2(yui_viewer_save), yv);

	yv->pixbuf = NULL;
}