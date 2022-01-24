#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ stderr_src_id; struct TYPE_8__* current_dvd_device; struct TYPE_8__* extra_activity_path; int /*<<< orphan*/ * activity_buffer; int /*<<< orphan*/ * queue_activity_buffer; int /*<<< orphan*/ * extra_activity_buffer; int /*<<< orphan*/ * builder; int /*<<< orphan*/ * activity_log; int /*<<< orphan*/  globals; int /*<<< orphan*/  prefs; int /*<<< orphan*/  settings_array; int /*<<< orphan*/  queue; int /*<<< orphan*/  app; } ;
typedef  TYPE_1__ signal_user_data_t ;
struct TYPE_9__ {void* _file; } ;
typedef  int /*<<< orphan*/  GCallback ;

/* Variables and functions */
 int /*<<< orphan*/  ATTACH_PARENT_PROCESS ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GETTEXT_PACKAGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int G_APPLICATION_HANDLES_OPEN ; 
 int G_APPLICATION_NON_UNIQUE ; 
 int /*<<< orphan*/  PACKAGE_LOCALE_DIR ; 
 void* STDERR_FILENO ; 
 void* STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,char**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 scalar_t__ ghb_activate_cb ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ ghb_open_file_cb ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (char*,int) ; 
 TYPE_2__* stderr ; 
 TYPE_2__* stdout ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ win32_console ; 

int
FUNC25(int argc, char *argv[])
{
#if defined(_WIN32)
    // Tell gdk pixbuf where it's loader config file is.
    _putenv_s("GDK_PIXBUF_MODULE_FILE", "ghb.exe.local/loaders.cache");
    _putenv_s("GST_PLUGIN_PATH", "lib/gstreamer-1.0");
#endif


#ifdef ENABLE_NLS
    bindtextdomain(GETTEXT_PACKAGE, PACKAGE_LOCALE_DIR);
    bind_textdomain_codeset(GETTEXT_PACKAGE, "UTF-8");
    textdomain(GETTEXT_PACKAGE);
#endif

#if defined(_WIN32)
    if (win32_console)
    {
        // Enable console logging
        if(AttachConsole(ATTACH_PARENT_PROCESS) || AllocConsole()){
            close(STDOUT_FILENO);
            freopen("CONOUT$", "w", stdout);
            close(STDERR_FILENO);
            freopen("CONOUT$", "w", stderr);
        }
    }
    else
    {
        // Non-console windows apps do not have a stderr->_file
        // assigned properly
        stderr->_file = STDERR_FILENO;
        stdout->_file = STDOUT_FILENO;
    }
#endif

    int                  status;
    signal_user_data_t * ud;

    FUNC20();
    ud = FUNC13(sizeof(signal_user_data_t));
    ud->app = FUNC23("fr.handbrake.ghb",
                                  G_APPLICATION_NON_UNIQUE |
                                  G_APPLICATION_HANDLES_OPEN);
    // Connect application signals
    FUNC15(ud->app, "activate", (GCallback)ghb_activate_cb, ud);
    FUNC15(ud->app, "open", (GCallback)ghb_open_file_cb, ud);
    // Set application options
    FUNC8(FUNC2(ud->app), entries);
#if defined(_ENABLE_GST)
    g_application_add_option_group(G_APPLICATION(ud->app),
                                   gst_init_get_option_group());
#endif
    status = FUNC10(FUNC2(ud->app), argc, argv);

    FUNC17();

    // Remove stderr redirection
    if (ud->stderr_src_id > 0)
        FUNC16(ud->stderr_src_id);
    FUNC21(&ud->queue);
    FUNC21(&ud->settings_array);
    FUNC21(&ud->prefs);
    FUNC21(&ud->globals);

    if (ud->activity_log != NULL)
        FUNC12(ud->activity_log);
    FUNC19();
    FUNC18();

    if (ud->builder != NULL)
        FUNC14(ud->builder);

    FUNC14(ud->extra_activity_buffer);
    FUNC14(ud->queue_activity_buffer);
    FUNC14(ud->activity_buffer);
    FUNC11(ud->extra_activity_path);

    FUNC11(ud->current_dvd_device);
    FUNC11(ud);

    return status;
}