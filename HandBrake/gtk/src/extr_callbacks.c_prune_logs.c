
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct stat {int st_mtime; } ;
struct TYPE_4__ {int prefs; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gint ;
typedef int gchar ;
typedef int GDir ;


 int G_FILE_TEST_IS_DIR ;
 int g_dir_close (int *) ;
 int * g_dir_open (int *,int ,int *) ;
 int * g_dir_read_name (int *) ;
 scalar_t__ g_file_test (int *,int ) ;
 int g_free (int *) ;
 int g_stat (int *,struct stat*) ;
 int * g_strdup_printf (char*,int *,int const*) ;
 int g_unlink (int *) ;
 int * ghb_get_user_config_dir (char*) ;
 int ghb_preview_cleanup (TYPE_1__*) ;
 int ghb_settings_combo_int (int ,char*) ;
 int time (int *) ;

__attribute__((used)) static void
prune_logs(signal_user_data_t *ud)
{
    gchar *dest_dir;
    gint days;


    days = ghb_settings_combo_int(ud->prefs, "LogLongevity");
    if (days > 365)
        return;

    dest_dir = ghb_get_user_config_dir("EncodeLogs");
    if (g_file_test(dest_dir, G_FILE_TEST_IS_DIR))
    {
        const gchar *file;
        gint duration = days * 24 * 60 * 60;

        GDir *gdir = g_dir_open(dest_dir, 0, ((void*)0));
        time_t now;

        now = time(((void*)0));
        file = g_dir_read_name(gdir);
        while (file)
        {
            gchar *path;
            struct stat stbuf;

            path = g_strdup_printf("%s/%s", dest_dir, file);
            g_stat(path, &stbuf);
            if (now - stbuf.st_mtime > duration)
            {
                g_unlink(path);
            }
            g_free(path);
            file = g_dir_read_name(gdir);
        }
        g_dir_close(gdir);
    }
    g_free(dest_dir);
    ghb_preview_cleanup(ud);
}
