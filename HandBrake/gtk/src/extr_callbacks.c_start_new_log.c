
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct TYPE_4__ {scalar_t__ job_activity_log; int prefs; int queue_activity_buffer; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef scalar_t__ gchar ;
typedef int GhbValue ;


 int g_free (scalar_t__*) ;
 scalar_t__ g_io_channel_new_file (scalar_t__*,char*,int *) ;
 int g_io_channel_unref (scalar_t__) ;
 int g_io_channel_write_chars (scalar_t__,scalar_t__*,int,int *,int *) ;
 scalar_t__* g_path_get_basename (scalar_t__ const*) ;
 scalar_t__* g_path_get_dirname (scalar_t__ const*) ;
 scalar_t__* g_strdup_printf (char*,int ,int ,...) ;
 scalar_t__* g_strrstr (scalar_t__*,char*) ;
 scalar_t__ ghb_dict_get_bool (int ,char*) ;
 scalar_t__* ghb_dict_get_string (int *,char*) ;
 int ghb_dict_set_string (int *,char*,scalar_t__*) ;
 scalar_t__* ghb_get_user_config_dir (char*) ;
 int ghb_queue_select_log (TYPE_1__*) ;
 int gtk_text_buffer_set_text (int ,char*,int ) ;
 int hb_get_build (int *) ;
 int hb_get_version (int *) ;
 struct tm* localtime (int *) ;
 int time (int *) ;

__attribute__((used)) static void
start_new_log(signal_user_data_t *ud, GhbValue *uiDict)
{
    time_t _now;
    struct tm *now;
    gchar *log_path, *pos, *basename, *dest_dir;
    const gchar *destname;



    ghb_queue_select_log(ud);

    gtk_text_buffer_set_text(ud->queue_activity_buffer, "", 0);

    _now = time(((void*)0));
    now = localtime(&_now);
    destname = ghb_dict_get_string(uiDict, "destination");
    basename = g_path_get_basename(destname);
    if (ghb_dict_get_bool(ud->prefs, "EncodeLogLocation"))
    {
        dest_dir = g_path_get_dirname (destname);
    }
    else
    {
        dest_dir = ghb_get_user_config_dir("EncodeLogs");
    }
    pos = g_strrstr( basename, "." );
    if (pos != ((void*)0))
    {
        *pos = 0;
    }
    log_path = g_strdup_printf("%s/%s %d-%02d-%02d %02d-%02d-%02d.log",
        dest_dir,
        basename,
        now->tm_year + 1900, now->tm_mon + 1, now->tm_mday,
        now->tm_hour, now->tm_min, now->tm_sec);
    g_free(basename);
    g_free(dest_dir);
    if (ud->job_activity_log)
        g_io_channel_unref(ud->job_activity_log);
    ud->job_activity_log = g_io_channel_new_file (log_path, "w", ((void*)0));
    if (ud->job_activity_log)
    {
        gchar *ver_str;

        ver_str = g_strdup_printf("Handbrake Version: %s (%d)\n",
                                    hb_get_version(((void*)0)), hb_get_build(((void*)0)));
        g_io_channel_write_chars (ud->job_activity_log, ver_str,
                                    -1, ((void*)0), ((void*)0));
        g_free(ver_str);
        ghb_dict_set_string(uiDict, "ActivityFilename", log_path);
    }
    g_free(log_path);
}
