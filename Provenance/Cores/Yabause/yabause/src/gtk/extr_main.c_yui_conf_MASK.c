#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int gint ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  GTK_BUTTONS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_DIALOG_MODAL ; 
 int /*<<< orphan*/  GTK_MESSAGE_WARNING ; 
#define  GTK_RESPONSE_CANCEL 129 
#define  GTK_RESPONSE_OK 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G_KEY_FILE_NONE ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  inifile ; 
 int /*<<< orphan*/  keyfile ; 
 int /*<<< orphan*/  yui ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(void) {
	gint result;
	GtkWidget * dialog;

	dialog = FUNC2();

	result = FUNC6(FUNC0(dialog));
	FUNC8(dialog);
	switch(result) {
		case GTK_RESPONSE_OK:
                {
			gboolean mustRestart;
			FUNC3(inifile, FUNC5(keyfile, 0, 0), -1, 0);
			mustRestart = FUNC9();
			if (mustRestart) {
                       		GtkWidget* warningDlg = FUNC7 (FUNC1(yui),
                                	                                        GTK_DIALOG_MODAL,
                                        	                                GTK_MESSAGE_WARNING,
                                                	                        GTK_BUTTONS_OK,
                                                        	                "You must restart Yabause before the changes take effect.");

                        	FUNC6 (FUNC0(warningDlg));
                        	FUNC8 (warningDlg); 
			}
			break;
                }
		case GTK_RESPONSE_CANCEL:
			FUNC4(keyfile, inifile, G_KEY_FILE_NONE, 0);
			break;
	}
}