#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  guint ;
typedef  int /*<<< orphan*/ * gpointer ;
typedef  char gchar ;
struct TYPE_2__ {int /*<<< orphan*/  (* KeyName ) (int /*<<< orphan*/ ,char*,int) ;int /*<<< orphan*/  Name; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkAttachOptions ;
typedef  int /*<<< orphan*/  GKeyFile ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int GTK_EXPAND ; 
 int GTK_FILL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* PERCore ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  yui_input_entry_focus_in ; 
 int /*<<< orphan*/  yui_input_entry_focus_out ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  yui_input_entry_keypress ; 

GtkWidget* FUNC19(GKeyFile * keyfile, const gchar * group, const gchar * keys[]) {
	GtkWidget * widget;
	GtkWidget * label;
	GtkWidget * entry;
	guint keyName;
	int row = 0;

	widget = FUNC3(FUNC6(FUNC18(), "key-file", keyfile, "group", group, NULL));

	while(keys[row]) {
		char tmp[100];
		FUNC14(FUNC2(widget), row + 1, 2);
		label = FUNC11(keys[row]);
  
		FUNC13(FUNC2(widget), label, 0, 1, row , row + 1,
			(GtkAttachOptions) (GTK_FILL), (GtkAttachOptions) (0), 0, 0);
		FUNC12 (FUNC1 (label), 0, 0.5);

		entry = FUNC8 ();
		FUNC10(FUNC0(entry), 10);

		FUNC16(tmp, "%s.%s.1", group, keys[row]);
		keyName = FUNC5(keyfile, PERCore->Name, tmp, 0);
		if (keyName > 0) {
			char buffer[50];
			PERCore->KeyName(keyName, buffer, 50);
			FUNC9(FUNC0(entry), buffer);
		}

		if (PERCore) {
			//if (PERCore->canScan)
				FUNC7(entry, "focus-in-event", FUNC4(yui_input_entry_focus_in), (gpointer) keys[row]);
				FUNC7(entry, "focus-out-event", FUNC4(yui_input_entry_focus_out), NULL);
			//else
				FUNC7(entry, "key-press-event", FUNC4(yui_input_entry_keypress), (gpointer) keys[row]);
		} else {
			FUNC15(entry, FALSE);
		}
  
		FUNC13(FUNC2(widget), entry,  1, 2, row, row + 1,
			(GtkAttachOptions) (GTK_EXPAND | GTK_FILL), (GtkAttachOptions) (0), 0, 0);
		row++;
	}

	return widget;
}