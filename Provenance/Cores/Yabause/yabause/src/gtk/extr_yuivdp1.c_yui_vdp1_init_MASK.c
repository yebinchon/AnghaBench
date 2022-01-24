#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {int /*<<< orphan*/ * texture; scalar_t__ cursor; int /*<<< orphan*/  image; int /*<<< orphan*/  buffer; int /*<<< orphan*/  store; struct TYPE_27__* toolbar; } ;
typedef  TYPE_1__ YuiVdp1 ;
typedef  TYPE_1__ GtkWidget ;
typedef  int /*<<< orphan*/  GtkTreeViewColumn ;
typedef  int /*<<< orphan*/  GtkCellRenderer ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GDK_TYPE_PIXBUF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  GTK_POLICY_AUTOMATIC ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  GTK_TOOLBAR_ICONS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  G_TYPE_STRING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/ * FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC34 (char*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC38 () ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  yui_vdp1_destroy ; 
 int /*<<< orphan*/  yui_vdp1_view_cursor_changed ; 
 int /*<<< orphan*/  FUNC41 () ; 

__attribute__((used)) static void FUNC42 (YuiVdp1 * yv) {
	GtkWidget * hbox, * vbox, * vbox2, * view;

	FUNC40(FUNC9(yv), "VDP1");

	vbox = FUNC37(FALSE, 0);
	FUNC18(FUNC1(vbox), 0);
	FUNC17(FUNC1(yv), vbox);

	yv->toolbar = FUNC31();

	FUNC32(FUNC6(yv->toolbar), GTK_TOOLBAR_ICONS);

	FUNC14(FUNC0(vbox), yv->toolbar, FALSE, FALSE, 0);

	hbox = FUNC19();
	FUNC14(FUNC0(vbox), hbox, TRUE, TRUE, 4);

	yv->store = FUNC20(2, G_TYPE_STRING, GDK_TYPE_PIXBUF);
	view = FUNC35(FUNC7 (yv->store));
	FUNC36(FUNC8(view), FALSE);
	{
		GtkWidget * scroll;
		GtkCellRenderer *renderer;
		GtkCellRenderer *icon;
		GtkTreeViewColumn *column;

		scroll = FUNC25(NULL, NULL);
		FUNC26(FUNC3(scroll), GTK_POLICY_AUTOMATIC, GTK_POLICY_AUTOMATIC);

		renderer = FUNC16();
		column = FUNC34("Command", renderer, "text", 0, NULL);
		FUNC33(FUNC8 (view), column);

		icon = FUNC15();
		FUNC12(icon, "xalign", 0, NULL);
		column = FUNC34("Icon", icon, "pixbuf", 1, NULL);
		FUNC33(FUNC8 (view), column);

		FUNC17(FUNC1(scroll), view);
		FUNC21(FUNC2(hbox), scroll, FALSE, TRUE);
	}
	FUNC13(view, "cursor-changed", FUNC10(yui_vdp1_view_cursor_changed), yv);

	FUNC13(FUNC11(yv), "delete-event", FUNC4(yui_vdp1_destroy), NULL);

	vbox2 = FUNC38();
	FUNC22(FUNC2(hbox), vbox2, TRUE, TRUE);
	{
		GtkWidget * scroll = FUNC25(NULL, NULL);
		GtkWidget * text = FUNC28();
		FUNC26(FUNC3(scroll), GTK_POLICY_AUTOMATIC, GTK_POLICY_AUTOMATIC);
		FUNC30(FUNC5(text), FALSE);
		FUNC29(FUNC5(text), FALSE);
		yv->buffer = FUNC27 (FUNC5 (text));
		FUNC17(FUNC1(scroll), text);
		FUNC21(FUNC2(vbox2), scroll, FALSE, TRUE);
	}
	yv->image = FUNC41();
	{
		GtkWidget * scroll = FUNC25(NULL, NULL);
		FUNC26(FUNC3(scroll), GTK_POLICY_AUTOMATIC, GTK_POLICY_AUTOMATIC);
		FUNC24(FUNC3(scroll), yv->image);
		FUNC22(FUNC2(vbox2), scroll, TRUE, TRUE);
	}

	yv->cursor = 0;
	yv->texture = NULL;

	FUNC39(FUNC9(yv), 500, 450);

	FUNC23(FUNC2(hbox), 250);

	FUNC23(FUNC2(vbox2), 200);
}