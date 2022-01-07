
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef char gchar ;
typedef int GtkWindow ;


 int FALSE ;
 int GHB_WIDGET (int ,char*) ;
 int GTK_MESSAGE_WARNING ;
 int * GTK_WINDOW (int ) ;
 int _ (char*) ;
 int exit (int) ;
 int g_free (char*) ;
 char* g_strdup_printf (char*,...) ;
 int ghb_log (char*,...) ;
 int ghb_message_dialog (int *,int ,char*,int ,int ) ;
 int ghb_update_ui_combo_box (TYPE_1__*,char*,int *,int ) ;
 int hb_presets_builtin_update () ;
 int hb_presets_current_version (int*,int*,int*) ;
 scalar_t__ presets_add_config_file (char*) ;
 int store_presets () ;

void
ghb_presets_load(signal_user_data_t *ud)
{
    int result = presets_add_config_file("presets.json");
    if (result == -2)
    {




        GtkWindow *hb_window = GTK_WINDOW(GHB_WIDGET(ud->builder, "hb_window"));
        gchar *message = g_strdup_printf(
            _("Presets found are newer than what is supported by this version of HandBrake!\n\n"
              "Would you like to continue?"));
        if (!ghb_message_dialog(hb_window, GTK_MESSAGE_WARNING, message,
            _("Get me out of here!"), _("Load backup presets")))
        {
            g_free(message);
            exit(1);
        }
        g_free(message);

        gchar *name;
        int major, minor, micro;

        hb_presets_current_version(&major, &minor, &micro);
        name = g_strdup_printf("presets.%d.%d.%d.json", major, minor, micro);
        ghb_log("Failed to read presets file, trying backup (%s)...", name);
        if (presets_add_config_file(name) < 0)
        {
            ghb_log("Failed to read backup presets, using defaults...");
            hb_presets_builtin_update();



        }
        g_free(name);
    }
    else if (result < 0)
    {
        if (presets_add_config_file("presets") < 0)
        {
            ghb_log("Failed to read presets file, initailizing new presets...");
            hb_presets_builtin_update();
            store_presets();
        }
    }
    ghb_update_ui_combo_box(ud, "PresetCategory", ((void*)0), FALSE);
}
