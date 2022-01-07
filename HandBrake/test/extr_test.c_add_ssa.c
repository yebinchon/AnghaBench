
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* iso639_2; } ;
typedef TYPE_1__ iso639_lang_t ;
typedef int int64_t ;
typedef int hb_value_array_t ;
typedef int hb_dict_t ;


 int IMPORTSRT ;
 int fprintf (int ,char*,char*) ;
 int * hb_dict_init () ;
 int hb_dict_set (int *,char*,int *) ;
 int hb_str_vlen (char**) ;
 scalar_t__ hb_subtitle_can_burn (int ) ;
 int hb_value_array_append (int *,int *) ;
 int * hb_value_bool (int) ;
 int * hb_value_int (int ) ;
 int * hb_value_string (char*) ;
 TYPE_1__* lang_lookup (char*) ;
 int ssaburn ;
 int ssadefault ;
 char** ssafile ;
 char** ssalang ;
 char** ssaoffset ;
 int stderr ;
 int strtoll (char*,int *,int ) ;

__attribute__((used)) static int add_ssa(hb_value_array_t *list, int track, int *one_burned)
{
    int64_t offset = 0;
    char *iso639_2 = "und";
    int burn = !*one_burned && ssaburn == track + 1 &&
               hb_subtitle_can_burn(IMPORTSRT);
    *one_burned |= burn;
    int def = ssadefault == track + 1;

    if (ssaoffset && track < hb_str_vlen(ssaoffset) && ssaoffset[track])
        offset = strtoll(ssaoffset[track], ((void*)0), 0);
    if (ssalang && track < hb_str_vlen(ssalang) && ssalang[track])
    {
        const iso639_lang_t *lang = lang_lookup(ssalang[track]);
        if (lang != ((void*)0))
        {
            iso639_2 = lang->iso639_2;
        }
        else
        {
            fprintf(stderr, "Warning: Invalid SRT language (%s)\n",
                    ssalang[track]);
        }
    }

    hb_dict_t *subtitle_dict = hb_dict_init();
    hb_dict_t *ssa_dict = hb_dict_init();
    hb_dict_set(subtitle_dict, "Import", ssa_dict);
    hb_dict_set(subtitle_dict, "Default", hb_value_bool(def));
    hb_dict_set(subtitle_dict, "Burn", hb_value_bool(burn));
    hb_dict_set(subtitle_dict, "Offset", hb_value_int(offset));
    hb_dict_set(ssa_dict, "Format", hb_value_string("SSA"));
    hb_dict_set(ssa_dict, "Filename", hb_value_string(ssafile[track]));
    hb_dict_set(ssa_dict, "Language", hb_value_string(iso639_2));
    hb_value_array_append(list, subtitle_dict);
    return 0;
}
