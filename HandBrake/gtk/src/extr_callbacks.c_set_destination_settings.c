
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct tm {int dummy; } ;
struct TYPE_4__ {int * globals; int * prefs; int * settings; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int const* const* const* const* const* gint ;
typedef int const* const* const* const* gchar ;
typedef int GhbValue ;
typedef int GString ;


 int FALSE ;
 int G_FILE_TEST_IS_DIR ;
 int W_OK ;
 scalar_t__ access (char*,int ) ;
 int g_debug (char*) ;
 scalar_t__ g_file_test (char*,int ) ;
 int g_free (char*) ;
 char* g_path_get_dirname (int const* const* const* const* const*) ;
 int g_string_append_printf (int *,char*,...) ;
 int const* const* const***** g_string_free (int *,int ) ;
 int * g_string_new (char*) ;
 int const* const* const***** get_creation_date (char*,int const* const* const*****,int const* const* const* const* const*) ;
 int const* const* const***** get_extension (TYPE_1__*,int *) ;
 scalar_t__ ghb_dict_get_bool (int *,char*) ;
 double ghb_dict_get_double (int *,char*) ;
 void* ghb_dict_get_int (int *,char*) ;
 int const* const* const***** ghb_dict_get_string (int *,char*) ;
 int ghb_dict_get_value (int *,char*) ;
 int ghb_dict_set (int *,char*,int ) ;
 int ghb_dict_set_string (int *,char*,char*) ;
 scalar_t__ ghb_settings_combo_int (int *,char*) ;
 int const* const* const***** ghb_settings_video_encoder_codec (int *,char*) ;
 int ghb_value_dup (int ) ;
 char* hb_video_quality_get_name (int const* const* const* const* const*) ;
 struct tm* localtime (int *) ;
 int make_unique_dest (int const* const* const* const* const*,int *,int const* const* const* const* const*) ;
 int strftime (char*,int,char*,struct tm*) ;
 int strlen (char*) ;
 int strncasecmp (int const* const* const* const* const*,char*,int ) ;
 int time (int *) ;

__attribute__((used)) static void
set_destination_settings(signal_user_data_t *ud, GhbValue *settings)
{
    const gchar *extension, *dest_file, *dest_dir;
    gchar *filename;

    extension = get_extension(ud, settings);

    g_debug("set_destination_settings");
    dest_file = ghb_dict_get_string(ud->settings, "dest_file");
    if (dest_file == ((void*)0))
    {


        GString *str = g_string_new("");
        const gchar *vol_name;
        vol_name = ghb_dict_get_string(settings, "volume");
        g_string_append_printf(str, "%s", vol_name);
        g_string_append_printf(str, ".%s", extension);
        filename = g_string_free(str, FALSE);
        ghb_dict_set_string(settings, "dest_file", filename);
        g_free(filename);
    }
    ghb_dict_set(settings, "dest_dir", ghb_value_dup(
                 ghb_dict_get_value(ud->prefs, "destination_dir")));
    if (ghb_dict_get_bool(ud->prefs, "auto_name"))
    {
        GString *str = g_string_new("");
        const gchar *p;

        p = ghb_dict_get_string(ud->prefs, "auto_name_template");


        if (p != ((void*)0) &&
            (!strncasecmp(p, "{source-path}", strlen("{source-path}")) ||
             !strncasecmp(p, "{source_path}", strlen("{source_path}"))))
        {
            const gchar * source;

            source = ghb_dict_get_string(ud->globals, "scan_source");
            if (source != ((void*)0))
            {
                char * dirname = g_path_get_dirname(source);

                if (dirname != ((void*)0) &&
                    g_file_test(dirname, G_FILE_TEST_IS_DIR) &&
                    access(dirname, W_OK) == 0)
                {
                    ghb_dict_set_string(settings, "dest_dir", dirname);
                }
                g_free(dirname);
            }
            p += strlen("{source-path}");
        }
        while (*p)
        {
            if (!strncasecmp(p, "{source}", strlen("{source}")))
            {
                const gchar *vol_name;
                vol_name = ghb_dict_get_string(settings, "volume");
                g_string_append_printf(str, "%s", vol_name);
                p += strlen("{source}");
            }
            else if (!strncasecmp(p, "{title}", strlen("{title}")))
            {
                gint title = ghb_dict_get_int(settings, "title");
                if (title >= 0)
                    g_string_append_printf(str, "%d", title);
                p += strlen("{title}");
            }
            else if (!strncasecmp(p, "{preset}", strlen("{preset}")))
            {
                const gchar *preset_name;
                preset_name = ghb_dict_get_string(settings, "PresetName");
                g_string_append_printf(str, "%s", preset_name);
                p += strlen("{preset}");
            }
            else if (!strncasecmp(p, "{chapters}", strlen("{chapters}")))
            {
                if (ghb_settings_combo_int(settings, "PtoPType") == 0)
                {
                    gint start, end;
                    start = ghb_dict_get_int(settings, "start_point");
                    end = ghb_dict_get_int(settings, "end_point");
                    if (start == end)
                        g_string_append_printf(str, "%d", start);
                    else
                        g_string_append_printf(str, "%d-%d", start, end);
                }
                p += strlen("{chapters}");
            }
            else if (!strncasecmp(p, "{time}", strlen("{time}")))
            {
                char st[6];
                struct tm *lt;
                time_t t = time(((void*)0));
                lt = localtime(&t);
                st[0] = 0;
                strftime(st, 6, "%H:%M", lt);
                g_string_append_printf(str, "%s", st);
                p += strlen("{time}");
            }
            else if (!strncasecmp(p, "{date}", strlen("{date}")))
            {
                char dt[11];
                struct tm *lt;
                time_t t = time(((void*)0));
                lt = localtime(&t);
                dt[0] = 0;
                strftime(dt, 11, "%Y-%m-%d", lt);
                g_string_append_printf(str, "%s", dt);
                p += strlen("{date}");
            }
            else if (!strncasecmp(p, "{creation-date}", strlen("{creation-date}")))
            {
                gchar *val;
                const gchar *source = ghb_dict_get_string(ud->globals, "scan_source");
                val = get_creation_date("%Y-%m-%d", ghb_dict_get_string(settings, "MetaReleaseDate"), source);
                g_string_append_printf(str, "%s", val);
                p += strlen("{creation-date}");
                g_free(val);
            }
            else if (!strncasecmp(p, "{creation-time}", strlen("{creation-time}")))
            {
                gchar *val;
                const gchar *source = ghb_dict_get_string(ud->globals, "scan_source");
                val = get_creation_date("%H:%M", ghb_dict_get_string(settings, "MetaReleaseDate"), source);
                g_string_append_printf(str, "%s", val);
                p += strlen("{creation-time}");
                g_free(val);
            }
            else if (!strncasecmp(p, "{quality}", strlen("{quality}")))
            {
                if (ghb_dict_get_bool(settings, "vquality_type_constant"))
                {
                    gint vcodec;
                    const char *vqname;
                    double vquality;
                    vcodec = ghb_settings_video_encoder_codec(settings, "VideoEncoder");
                    vqname = hb_video_quality_get_name(vcodec);
                    vquality = ghb_dict_get_double(settings, "VideoQualitySlider");
                    g_string_append_printf(str, "%s%.3g", vqname, vquality);
                }
                p += strlen("{quality}");
            }
            else if (!strncasecmp(p, "{bitrate}", strlen("{bitrate}")))
            {
                if (ghb_dict_get_bool(settings, "vquality_type_bitrate"))
                {
                    int vbitrate;
                    vbitrate = ghb_dict_get_int(settings, "VideoAvgBitrate");
                    g_string_append_printf(str, "%dkbps", vbitrate);
                }
                p += strlen("{bitrate}");
            }
            else
            {
                g_string_append_printf(str, "%c", *p);
                p++;
            }
        }
        dest_dir = ghb_dict_get_string(settings, "dest_dir");
        make_unique_dest(dest_dir, str, extension);
        g_string_append_printf(str, ".%s", extension);
        filename = g_string_free(str, FALSE);
        ghb_dict_set_string(settings, "dest_file", filename);
        g_free(filename);
    }
}
