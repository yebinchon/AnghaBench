#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  prefs; int /*<<< orphan*/  settings; int /*<<< orphan*/  builder; int /*<<< orphan*/  globals; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ GTK_RESPONSE_NO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18(gboolean single, signal_user_data_t *ud)
{
    GtkWidget *dialog;
    const gchar *sourcename;
    gint    response;

    FUNC3("source_browse_clicked_cb ()");
    sourcename = FUNC6(ud->globals, "scan_source");
    GtkWidget *widget;
    widget = FUNC0(ud->builder, "single_title_box");
    if (single)
        FUNC15(widget);
    else
        FUNC14(widget);
    dialog = FUNC0(ud->builder, "source_dialog");
    FUNC16(ud, dialog);

    FUNC15(dialog);
    FUNC13(FUNC2(dialog), sourcename);

    response = FUNC11(FUNC1 (dialog));
    FUNC14(dialog);
    if (response == GTK_RESPONSE_NO)
    {
        gchar *filename;

        filename = FUNC12 (FUNC2 (dialog));
        if (filename != NULL)
        {
            gint title_id;

            if (single)
                title_id = FUNC5(ud->settings, "single_title");
            else
                title_id = 0;
            // ghb_do_scan replaces "scan_source" key in dict, so we must
            // be finished with sourcename before calling ghb_do_scan
            // since the memory it references will be freed
            if (FUNC17(sourcename, filename) != 0)
            {
                FUNC7(ud->prefs, "default_source", filename);
                FUNC10(ud->prefs, "default_source");
                FUNC9(filename, ud);
            }
            FUNC8(ud, filename, title_id, TRUE);
            FUNC4(filename);
        }
    }
}