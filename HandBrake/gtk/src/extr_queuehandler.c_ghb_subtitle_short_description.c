
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* native_name; char* eng_name; } ;
typedef TYPE_1__ iso639_lang_t ;
typedef char gchar ;
typedef int const GhbValue ;


 int IMPORTSRT ;
 int IMPORTSSA ;
 int _ (char*) ;
 char* g_strdup (int ) ;
 char* g_strdup_printf (char*,char const*,...) ;
 int const* ghb_dict_get (int const*,char*) ;
 void* ghb_dict_get_string (int const*,char*) ;
 TYPE_1__* lang_lookup (char const*) ;
 int strcasecmp (char const*,char*) ;

char *
ghb_subtitle_short_description(const GhbValue *subsource,
                               const GhbValue *subsettings)
{
    GhbValue *import;
    char *desc = ((void*)0);

    import = ghb_dict_get(subsettings, "Import");
    if (import != ((void*)0))
    {
        const gchar * format = "SRT";
        const gchar * code;
        const gchar * lang;
        int source = IMPORTSRT;
        const iso639_lang_t *iso;

        format = ghb_dict_get_string(import, "Format");
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

        if (source == IMPORTSRT)
        {
            desc = g_strdup_printf("%s (%s)(%s)", lang, code, format);
        }
        else
        {
            desc = g_strdup_printf("%s (%s)", lang, format);
        }
    }
    else if (subsource == ((void*)0))
    {
        desc = g_strdup(_("Foreign Audio Scan"));
    }
    else
    {
        const char * lang = ghb_dict_get_string(subsource, "Language");
        desc = g_strdup_printf("%s", lang);
    }

    return desc;
}
