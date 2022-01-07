
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * prefs; int globals; int * settings; int settings_array; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int hb_title_t ;
typedef int gint ;
typedef int gchar ;
typedef int gboolean ;


 int g_debug (char*) ;
 int g_free (int *) ;
 int * g_strdup (int const*) ;
 int ghb_array_replace (int ,int,int *) ;
 int ghb_dict_get_int (int *,char*) ;
 int * ghb_dict_get_string (int ,char*) ;
 int ghb_dict_set_string (int ,char*,int const*) ;
 int ghb_load_settings (TYPE_1__*) ;
 int * ghb_lookup_title (int ,int*) ;
 int * ghb_queue_edit_settings ;
 int * last_scan_file ;
 int load_all_titles (TYPE_1__*,int) ;
 int prune_logs (TYPE_1__*) ;
 int show_scan_progress (TYPE_1__*) ;
 int start_scan (TYPE_1__*,int const*,int ,int ) ;
 scalar_t__ strcmp (int *,int const*) ;

void
ghb_do_scan(
    signal_user_data_t *ud,
    const gchar *filename,
    gint title_id,
    gboolean force)
{
    int titleindex;
    const hb_title_t *title;

    (void)title;

    g_debug("ghb_do_scan()");
    if (!force && last_scan_file != ((void*)0) &&
        strcmp(last_scan_file, filename) == 0)
    {
        if (ghb_queue_edit_settings != ((void*)0))
        {
            title_id = ghb_dict_get_int(ghb_queue_edit_settings, "title");
            title = ghb_lookup_title(title_id, &titleindex);
            ghb_array_replace(ud->settings_array, titleindex,
                              ghb_queue_edit_settings);
            ud->settings = ghb_queue_edit_settings;
            ghb_load_settings(ud);
            ghb_queue_edit_settings = ((void*)0);
        }
        else
        {
            title = ghb_lookup_title(title_id, &titleindex);
            load_all_titles(ud, titleindex);
        }
        return;
    }
    if (last_scan_file != ((void*)0))
        g_free(last_scan_file);
    last_scan_file = ((void*)0);
    if (filename != ((void*)0))
    {
        const gchar *path;
        gint preview_count;

        last_scan_file = g_strdup(filename);
        ghb_dict_set_string(ud->globals, "scan_source", filename);

        show_scan_progress(ud);
        path = ghb_dict_get_string(ud->globals, "scan_source");
        prune_logs(ud);

        preview_count = ghb_dict_get_int(ud->prefs, "preview_count");
        start_scan(ud, path, title_id, preview_count);
    }
}
