#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_1__ ;

/* Type definitions */
typedef  size_t gint ;
struct TYPE_35__ {int wLine; scalar_t__ address; int /*<<< orphan*/  store; struct TYPE_35__* quickCombo; struct TYPE_35__* toolbar; } ;
typedef  TYPE_1__ YuiMem ;
struct TYPE_36__ {scalar_t__ name; } ;
typedef  TYPE_1__ GtkWidget ;
typedef  int /*<<< orphan*/  GtkTreeViewColumn ;
typedef  TYPE_1__ GtkToolItem ;
typedef  TYPE_1__ GtkCellRenderer ;
typedef  int /*<<< orphan*/  GtkAccelGroup ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GDK_Page_Down ; 
 int /*<<< orphan*/  GDK_Page_Up ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  GTK_CELL_RENDERER_MODE_EDITABLE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GTK_STOCK_GO_DOWN ; 
 int /*<<< orphan*/  GTK_STOCK_GO_UP ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  GTK_TOOLBAR_ICONS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  G_TYPE_STRING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 () ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC19 () ; 
 TYPE_1__* FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC26 () ; 
 TYPE_1__* FUNC27 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 TYPE_1__* FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC34 (char*,TYPE_1__*,char*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC35 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,char*) ; 
 TYPE_6__* quickAddress ; 
 int /*<<< orphan*/  yui_mem_address_changed ; 
 int /*<<< orphan*/  yui_mem_combo_changed ; 
 int /*<<< orphan*/  yui_mem_content_changed ; 
 int /*<<< orphan*/  yui_mem_destroy ; 
 int /*<<< orphan*/  yui_mem_pagedown_clicked ; 
 int /*<<< orphan*/  yui_mem_pagedown_pressed ; 
 int /*<<< orphan*/  yui_mem_pageup_clicked ; 
 int /*<<< orphan*/  yui_mem_pageup_pressed ; 

__attribute__((used)) static void FUNC40 (YuiMem * yv) {
	GtkWidget * view;
	GtkCellRenderer * renderer;
	GtkTreeViewColumn * column;
	GtkAccelGroup *accelGroup;
	GtkToolItem * comboItem, * upbutton, * downbutton;
	GtkWidget * testbox, * vbox;
	gint i;

	FUNC39(FUNC9(yv), "Memory dump");

	vbox = FUNC36(FALSE, 0);
	FUNC23(FUNC3(yv), vbox);

	yv->toolbar = FUNC31();
	FUNC32(FUNC6(yv->toolbar), GTK_TOOLBAR_ICONS);
	FUNC18(FUNC1(vbox), yv->toolbar, FALSE, FALSE, 0);

	FUNC30(FUNC6(yv->toolbar), FUNC26(), 0);

	comboItem = FUNC28();
	FUNC29(comboItem, FALSE);
	FUNC30(FUNC6(yv->toolbar), comboItem, 1);

	downbutton = FUNC27(GTK_STOCK_GO_DOWN);
	FUNC14(downbutton, "clicked", FUNC10(yui_mem_pagedown_clicked), yv);
	FUNC30(FUNC6(yv->toolbar), downbutton, 2);

	upbutton = FUNC27(GTK_STOCK_GO_UP);
	FUNC14(upbutton, "clicked", FUNC10(yui_mem_pageup_clicked), yv);
	FUNC30(FUNC6(yv->toolbar), upbutton, 3);

	yv->quickCombo = FUNC20();

	FUNC24(FUNC4(FUNC17(FUNC0(yv->quickCombo))), 8);

	for ( i = 0 ; quickAddress[i].name ; i++ )
	  FUNC21( FUNC2( yv->quickCombo ), i, quickAddress[i].name );
	FUNC22( FUNC2(yv->quickCombo), 0 );
	FUNC14(yv->quickCombo, "changed", FUNC10(yui_mem_combo_changed), yv );
	FUNC14(FUNC17(FUNC0(yv->quickCombo)), "activate", FUNC10(yui_mem_address_changed), yv );

	testbox = FUNC36(FALSE, 0);
	FUNC18(FUNC1(testbox), yv->quickCombo, TRUE, FALSE, 0);
	FUNC23(FUNC3(comboItem), testbox);

	yv->store = FUNC25(2, G_TYPE_STRING, G_TYPE_STRING);
	view = FUNC35(FUNC7 (yv->store));

	renderer = FUNC19();
	column = FUNC34("Address", renderer, "text", 0, NULL);
	FUNC33(FUNC8 (view), column);
	renderer = FUNC19();
	column = FUNC34("Dump", renderer, "text", 1, NULL);
	FUNC33(FUNC8 (view), column);
	FUNC13(FUNC11(renderer), "editable", TRUE, "mode", GTK_CELL_RENDERER_MODE_EDITABLE, NULL );
	FUNC14(FUNC11(renderer), "edited", FUNC5(yui_mem_content_changed), yv );
	FUNC18(FUNC1(vbox), view, TRUE, TRUE, 0);

	FUNC14(FUNC11(yv), "delete-event", FUNC5(yui_mem_destroy), NULL);

	accelGroup = FUNC16 ();
	FUNC15( accelGroup, GDK_Page_Up, 0, 0, 
				 FUNC12 (FUNC10(yui_mem_pageup_pressed), yv, NULL) );
	FUNC15( accelGroup, GDK_Page_Down, 0, 0, 
				 FUNC12 (FUNC10(yui_mem_pagedown_pressed), yv, NULL) );
	FUNC37( FUNC9( yv ), accelGroup );

	yv->address = 0;
	yv->wLine = 8;

	FUNC38(FUNC9(yv), 300, -1);
}