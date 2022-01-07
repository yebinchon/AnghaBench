
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int GhbValue ;


 int FALSE ;
 int TRUE ;
 int * ghb_array_get (int *,int ) ;
 scalar_t__ ghb_array_len (int *) ;
 int * ghb_dict_get_value (int *,char*) ;
 int ghb_dict_set_string (int *,char*,char*) ;
 char* ghb_value_get_string (int *) ;

void
ghb_subtitle_set_pref_lang(GhbValue *settings)
{
    GhbValue *lang_list;
    gboolean set = FALSE;
    lang_list = ghb_dict_get_value(settings, "SubtitleLanguageList");
    if (ghb_array_len(lang_list) > 0)
    {
        GhbValue *glang = ghb_array_get(lang_list, 0);
        if (glang != ((void*)0))
        {
            ghb_dict_set_string(settings, "PreferredLanguage",
                                    ghb_value_get_string(glang));
            set = TRUE;
        }
    }
    if (!set)
    {
        ghb_dict_set_string(settings, "PreferredLanguage", "und");
    }
}
