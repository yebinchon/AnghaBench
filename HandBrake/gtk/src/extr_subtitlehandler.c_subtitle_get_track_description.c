
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* native_name; char* eng_name; } ;
typedef TYPE_1__ iso639_lang_t ;
typedef int hb_title_t ;
struct TYPE_6__ {int lang; } ;
typedef TYPE_2__ hb_subtitle_t ;
typedef char gchar ;
typedef int GhbValue ;


 int G_FILE_TEST_IS_REGULAR ;
 int IMPORTSRT ;
 int IMPORTSSA ;
 int _ (char*) ;
 scalar_t__ g_file_test (char const*,int ) ;
 int g_free (char*) ;
 char* g_path_get_basename (char const*) ;
 char* g_strdup (int ) ;
 char* g_strdup_printf (char*,...) ;
 int * ghb_dict_get (int *,char*) ;
 int ghb_dict_get_int (int *,char*) ;
 char* ghb_dict_get_string (int *,char*) ;
 TYPE_2__* ghb_get_subtitle_info (int const*,int) ;
 int * ghb_lookup_title (int,int*) ;
 TYPE_1__* lang_lookup (char const*) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static char *
subtitle_get_track_description(GhbValue *settings, GhbValue *subsettings)
{
    GhbValue * import;
    char *desc = ((void*)0);

    import = ghb_dict_get(subsettings, "Import");
    if (import != ((void*)0))
    {
        const gchar * format = "SRT";
        const gchar * filename, * code;
        const gchar * lang;
        int source = IMPORTSRT;
        const iso639_lang_t * iso;

        format = ghb_dict_get_string(import, "Format");
        filename = ghb_dict_get_string(import, "Filename");
        lang = ghb_dict_get_string(import, "Language");
        code = ghb_dict_get_string(import, "Codeset");

        if (format != ((void*)0) && !strcasecmp(format, "SSA"))
        {
            source = IMPORTSSA;
        }
        iso = lang_lookup(lang);
        if (iso != ((void*)0))
        {
            if (iso->native_name != ((void*)0))
                lang = iso->native_name;
            else
                lang = iso->eng_name;
        }

        if (g_file_test(filename, G_FILE_TEST_IS_REGULAR))
        {
            gchar *basename;

            basename = g_path_get_basename(filename);
            if (source == IMPORTSRT)
            {
                desc = g_strdup_printf("%s (%s)(%s)(%s)",
                                       lang, code, format, basename);
            }
            else
            {
                desc = g_strdup_printf("%s (%s)(%s)", lang, format, basename);
            }
            g_free(basename);
        }
        else
        {
            if (source == IMPORTSRT)
            {
                desc = g_strdup_printf("%s (%s)(%s)", lang, code, format);
            }
            else
            {
                desc = g_strdup_printf("%s (%s)", lang, format);
            }
        }
    }
    else
    {
        int title_id, titleindex;
        const hb_title_t *title;
        int track;
        hb_subtitle_t *subtitle;
        GhbValue *val;

        title_id = ghb_dict_get_int(settings, "title");
        title = ghb_lookup_title(title_id, &titleindex);
        val = ghb_dict_get(subsettings, "Track");
        track = ghb_dict_get_int(subsettings, "Track");
        if (val == ((void*)0) || track < 0)
        {
            desc = g_strdup(_("Foreign Audio Scan"));
        }
        else
        {
            subtitle = ghb_get_subtitle_info(title, track);
            if (subtitle != ((void*)0))
            {
                desc = g_strdup_printf("%d - %s", track + 1, subtitle->lang);
            }
        }
    }

    return desc;
}
