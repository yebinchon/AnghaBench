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
typedef  TYPE_1__* gpointer ;
typedef  int gint ;
typedef  char gchar ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  entry; } ;
typedef  TYPE_1__ YuiFileEntry ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkFileChooserAction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_FILE_CHOOSER_ACTION_OPEN ; 
 int /*<<< orphan*/  GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER ; 
#define  GTK_RESPONSE_ACCEPT 129 
#define  GTK_RESPONSE_CANCEL 128 
 int /*<<< orphan*/  GTK_STOCK_CANCEL ; 
 int /*<<< orphan*/  GTK_STOCK_OPEN ; 
 int YUI_FILE_ENTRY_DIRECTORY ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(GtkWidget * widget, gpointer user_data) {
        GtkWidget * file_selector;
        gint result;
        const gchar * filename;
	YuiFileEntry * yfe = user_data;
	GtkFileChooserAction action;

	if (yfe->flags & YUI_FILE_ENTRY_DIRECTORY) {
		action = GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER;
	} else {
		action = GTK_FILE_CHOOSER_ACTION_OPEN;
	}

        file_selector = FUNC6 ("Please choose a file", NULL, action,
                        GTK_STOCK_CANCEL, GTK_RESPONSE_CANCEL, GTK_STOCK_OPEN, GTK_RESPONSE_ACCEPT, NULL);
	filename = FUNC4(FUNC1(yfe->entry));
	if (filename[0] != '\0')
        	FUNC8(FUNC2(file_selector), filename);

        FUNC10(file_selector);

        result = FUNC3(FUNC0(file_selector));

        switch(result) {
                case GTK_RESPONSE_ACCEPT:
                        filename = FUNC7(FUNC2(file_selector));
                        FUNC5(FUNC1(yfe->entry), filename);
                        break;
                case GTK_RESPONSE_CANCEL:
                        break;
        }

        FUNC9(file_selector);
}