#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * prefs; int /*<<< orphan*/  globals; int /*<<< orphan*/ * settings; int /*<<< orphan*/  settings_array; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  hb_title_t ;
typedef  int /*<<< orphan*/  gint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  gboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * ghb_queue_edit_settings ; 
 int /*<<< orphan*/ * last_scan_file ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

void
FUNC14(
    signal_user_data_t *ud,
    const gchar *filename,
    gint title_id,
    gboolean force)
{
    int titleindex;
    const hb_title_t *title;

    (void)title; // Silence "unused variable" warning

    FUNC0("ghb_do_scan()");
    if (!force && last_scan_file != NULL &&
        FUNC13(last_scan_file, filename) == 0)
    {
        if (ghb_queue_edit_settings != NULL)
        {
            title_id = FUNC4(ghb_queue_edit_settings, "title");
            title = FUNC8(title_id, &titleindex);
            FUNC3(ud->settings_array, titleindex,
                              ghb_queue_edit_settings);
            ud->settings = ghb_queue_edit_settings;
            FUNC7(ud);
            ghb_queue_edit_settings = NULL;
        }
        else
        {
            title = FUNC8(title_id, &titleindex);
            FUNC9(ud, titleindex);
        }
        return;
    }
    if (last_scan_file != NULL)
        FUNC1(last_scan_file);
    last_scan_file = NULL;
    if (filename != NULL)
    {
        const gchar *path;
        gint preview_count;

        last_scan_file = FUNC2(filename);
        FUNC6(ud->globals, "scan_source", filename);

        FUNC11(ud);
        path = FUNC5(ud->globals, "scan_source");
        FUNC10(ud);

        preview_count = FUNC4(ud->prefs, "preview_count");
        FUNC12(ud, path, title_id, preview_count);
    }
}