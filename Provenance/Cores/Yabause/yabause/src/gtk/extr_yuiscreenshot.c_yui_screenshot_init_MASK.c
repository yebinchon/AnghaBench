#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {struct TYPE_16__* image; } ;
typedef  TYPE_1__ YuiScreenshot ;
typedef  TYPE_1__ GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  GTK_STOCK_CLOSE ; 
 int /*<<< orphan*/  GTK_STOCK_REFRESH ; 
 int /*<<< orphan*/  GTK_STOCK_SAVE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC10 () ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  gtk_widget_destroy ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  yui_screenshot_update ; 
 TYPE_1__* FUNC14 () ; 
 int /*<<< orphan*/  yui_viewer_save ; 

__attribute__((used)) static void FUNC15 (YuiScreenshot * yv) {
	GtkWidget * box;
	GtkWidget * button_box;
	GtkWidget * button;

	FUNC13(FUNC3(yv), "Screenshot");
	FUNC9(FUNC1(yv), 4);

	box = FUNC11(FALSE, 4);
	FUNC8(FUNC1(yv), box);

	yv->image = FUNC14();
	FUNC6(FUNC0(box), yv->image, FALSE, FALSE, 0);
	FUNC12(FUNC2(yv->image), 320, 224);

	button_box = FUNC10();
	FUNC6(FUNC0(box), button_box, FALSE, FALSE, 0);

	button = FUNC7(GTK_STOCK_REFRESH);
	FUNC6(FUNC0(button_box), button, FALSE, FALSE, 0);
	FUNC5(button, "clicked", FUNC4(yui_screenshot_update), yv);

	button = FUNC7(GTK_STOCK_SAVE);
	FUNC6(FUNC0(button_box), button, FALSE, FALSE, 0);
	FUNC5(button, "clicked", FUNC4(yui_viewer_save), yv->image);

	button = FUNC7(GTK_STOCK_CLOSE);
	FUNC6(FUNC0(button_box), button, FALSE, FALSE, 0);
	FUNC5(button, "clicked", FUNC4(gtk_widget_destroy), yv);
}