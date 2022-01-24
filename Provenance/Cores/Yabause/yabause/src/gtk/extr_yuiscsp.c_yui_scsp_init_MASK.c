#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ cursor; struct TYPE_19__* hbox; struct TYPE_19__* vbox; int /*<<< orphan*/  buffer; struct TYPE_19__* spin; } ;
typedef  TYPE_1__ YuiScsp ;
typedef  TYPE_1__ GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  GTK_POLICY_AUTOMATIC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC13 () ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC22 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  yui_scsp_destroy ; 
 int /*<<< orphan*/  yui_scsp_spin_cursor_changed ; 

__attribute__((used)) static void FUNC24 (YuiScsp * yv) {
	FUNC23(FUNC6(yv), "SCSP");

	yv->vbox = FUNC22(FALSE, 2);
	FUNC12(FUNC1(yv->vbox), 4);
	FUNC11(FUNC1(yv), yv->vbox);

	yv->spin = FUNC16(0, 31, 1);
	FUNC17(FUNC4(yv->spin), 0, 31);
	FUNC9(FUNC0(yv->vbox), yv->spin, FALSE, FALSE, 4);
	FUNC8(FUNC7(yv->spin), "value-changed", FUNC3(yui_scsp_spin_cursor_changed), yv);

	FUNC8(FUNC7(yv), "delete-event", FUNC3(yui_scsp_destroy), NULL);

	{
		GtkWidget * scroll = FUNC14(NULL, NULL);
		GtkWidget * text = FUNC19();
		FUNC15(FUNC2(scroll), GTK_POLICY_AUTOMATIC, GTK_POLICY_AUTOMATIC);
		FUNC21(FUNC5(text), FALSE);
		FUNC20(FUNC5(text), FALSE);
		yv->buffer = FUNC18 (FUNC5 (text));
		FUNC11(FUNC1(scroll), text);
		FUNC9(FUNC0(yv->vbox), scroll, TRUE, TRUE, 4);
	}

	yv->hbox = FUNC13();
	FUNC10(FUNC0(yv->hbox), 4);
	FUNC9(FUNC0(yv->vbox ), yv->hbox, FALSE, FALSE, 4);

	yv->cursor = 0;
}