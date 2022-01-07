
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ stderr_src_id; struct TYPE_8__* current_dvd_device; struct TYPE_8__* extra_activity_path; int * activity_buffer; int * queue_activity_buffer; int * extra_activity_buffer; int * builder; int * activity_log; int globals; int prefs; int settings_array; int queue; int app; } ;
typedef TYPE_1__ signal_user_data_t ;
struct TYPE_9__ {void* _file; } ;
typedef int GCallback ;


 int ATTACH_PARENT_PROCESS ;
 scalar_t__ AllocConsole () ;
 scalar_t__ AttachConsole (int ) ;
 int GETTEXT_PACKAGE ;
 int G_APPLICATION (int ) ;
 int G_APPLICATION_HANDLES_OPEN ;
 int G_APPLICATION_NON_UNIQUE ;
 int PACKAGE_LOCALE_DIR ;
 void* STDERR_FILENO ;
 void* STDOUT_FILENO ;
 int _putenv_s (char*,char*) ;
 int bind_textdomain_codeset (int ,char*) ;
 int bindtextdomain (int ,int ) ;
 int close (void*) ;
 int entries ;
 int freopen (char*,char*,TYPE_2__*) ;
 int g_application_add_main_option_entries (int ,int ) ;
 int g_application_add_option_group (int ,int ) ;
 int g_application_run (int ,int,char**) ;
 int g_free (TYPE_1__*) ;
 int g_io_channel_unref (int *) ;
 TYPE_1__* g_malloc0 (int) ;
 int g_object_unref (int *) ;
 int g_signal_connect (int ,char*,int ,TYPE_1__*) ;
 int g_source_remove (scalar_t__) ;
 scalar_t__ ghb_activate_cb ;
 int ghb_backend_close () ;
 scalar_t__ ghb_open_file_cb ;
 int ghb_resource_free () ;
 int ghb_settings_close () ;
 int ghb_ui_register_resource () ;
 int ghb_value_free (int *) ;
 int gst_init_get_option_group () ;
 int gtk_application_new (char*,int) ;
 TYPE_2__* stderr ;
 TYPE_2__* stdout ;
 int textdomain (int ) ;
 scalar_t__ win32_console ;

int
main(int argc, char *argv[])
{
    int status;
    signal_user_data_t * ud;

    ghb_ui_register_resource();
    ud = g_malloc0(sizeof(signal_user_data_t));
    ud->app = gtk_application_new("fr.handbrake.ghb",
                                  G_APPLICATION_NON_UNIQUE |
                                  G_APPLICATION_HANDLES_OPEN);

    g_signal_connect(ud->app, "activate", (GCallback)ghb_activate_cb, ud);
    g_signal_connect(ud->app, "open", (GCallback)ghb_open_file_cb, ud);

    g_application_add_main_option_entries(G_APPLICATION(ud->app), entries);




    status = g_application_run(G_APPLICATION(ud->app), argc, argv);

    ghb_backend_close();


    if (ud->stderr_src_id > 0)
        g_source_remove(ud->stderr_src_id);
    ghb_value_free(&ud->queue);
    ghb_value_free(&ud->settings_array);
    ghb_value_free(&ud->prefs);
    ghb_value_free(&ud->globals);

    if (ud->activity_log != ((void*)0))
        g_io_channel_unref(ud->activity_log);
    ghb_settings_close();
    ghb_resource_free();

    if (ud->builder != ((void*)0))
        g_object_unref(ud->builder);

    g_object_unref(ud->extra_activity_buffer);
    g_object_unref(ud->queue_activity_buffer);
    g_object_unref(ud->activity_buffer);
    g_free(ud->extra_activity_path);

    g_free(ud->current_dvd_device);
    g_free(ud);

    return status;
}
