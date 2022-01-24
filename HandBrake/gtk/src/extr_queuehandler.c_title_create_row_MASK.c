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
typedef  int /*<<< orphan*/  signal_user_data_t ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkLabel ;
typedef  int /*<<< orphan*/  GtkFileChooserButton ;
typedef  int /*<<< orphan*/  GtkEntry ;
typedef  int /*<<< orphan*/  GtkCheckButton ;
typedef  int /*<<< orphan*/  GtkBox ;
typedef  int /*<<< orphan*/  GCallback ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GTK_ALIGN_CENTER ; 
 int /*<<< orphan*/  GTK_ALIGN_FILL ; 
 int /*<<< orphan*/  GTK_ALIGN_START ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GTK_ORIENTATION_HORIZONTAL ; 
 int /*<<< orphan*/  GTK_ORIENTATION_VERTICAL ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  default_title_attrs ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ title_dest_dir_cb ; 
 scalar_t__ title_dest_file_cb ; 
 scalar_t__ title_selected_cb ; 

GtkWidget * FUNC26(signal_user_data_t *ud)
{
    GtkBox *hbox, *vbox_dest;
    GtkCheckButton *selected;
    GtkLabel *title;
    GtkEntry *dest_file;
    GtkFileChooserButton *dest_dir;

    hbox = FUNC0(FUNC10(GTK_ORIENTATION_HORIZONTAL, 0));
    FUNC11(hbox, 6);
    FUNC25(FUNC5(hbox));

    // Select checkbox
    selected = FUNC1(FUNC12());
    FUNC22(FUNC5(selected),
      FUNC6("Select this title for adding to the queue.\n"));
    FUNC24(FUNC5(selected), GTK_ALIGN_CENTER);
    FUNC21(FUNC5(selected), "title_selected");
    FUNC25(FUNC5(selected));
    FUNC7(selected, "toggled", (GCallback)title_selected_cb, ud);
    FUNC8(hbox, FUNC5(selected));

    // Title label
    title = FUNC4(FUNC16(FUNC6("No Title")));
    FUNC17(title, 12);
    FUNC18(FUNC5(title), GTK_ALIGN_START);
    FUNC24(FUNC5(title), GTK_ALIGN_CENTER);
    FUNC21(FUNC5(title), "title_label");
    FUNC25(FUNC5(title));
    FUNC8(hbox, FUNC5(title));

    default_title_attrs = FUNC15(title);
    FUNC23(FUNC5(title),
        FUNC6("There is another title with the same destination file name.\n"
        "This title will not be added to the queue unless you change\n"
        "the output file name.\n"));
    FUNC19(FUNC5(title), FALSE);

    // Destination entry and file chooser
    vbox_dest = FUNC0(FUNC10(GTK_ORIENTATION_VERTICAL, 0));
    FUNC20(FUNC5(vbox_dest), TRUE);
    FUNC18(FUNC5(vbox_dest), GTK_ALIGN_FILL);
    //gtk_widget_set_hexpand(GTK_WIDGET(vbox_dest), TRUE);
    dest_file = FUNC2(FUNC13());
    FUNC9(dest_file, 40);
    FUNC21(FUNC5(dest_file), "title_file");
    //gtk_widget_set_hexpand(GTK_WIDGET(dest_file), TRUE);
    FUNC25(FUNC5(dest_file));
    FUNC7(dest_file, "changed", (GCallback)title_dest_file_cb, ud);
    FUNC8(vbox_dest, FUNC5(dest_file));
    dest_dir = FUNC3(
            FUNC14(FUNC6("Destination Directory"),
                                        GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER));
    FUNC7(dest_dir, "selection-changed",
                    (GCallback)title_dest_dir_cb, ud);
    FUNC21(FUNC5(dest_dir), "title_dir");
    FUNC20(FUNC5(dest_dir), TRUE);
    FUNC25(FUNC5(dest_dir));
    FUNC8(vbox_dest, FUNC5(dest_dir));
    FUNC25(FUNC5(vbox_dest));
    FUNC8(hbox, FUNC5(vbox_dest));

    return FUNC5(hbox);
}