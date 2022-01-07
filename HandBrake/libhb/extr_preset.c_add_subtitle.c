
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_array_t ;
typedef int hb_dict_t ;


 int * hb_dict_init () ;
 int hb_dict_set_bool (int *,char*,int) ;
 int hb_dict_set_int (int *,char*,int) ;
 int hb_dict_set_string (int *,char*,char const*) ;
 int hb_value_array_append (int *,int *) ;

__attribute__((used)) static void add_subtitle(hb_value_array_t *list, int track,
                         int make_default, int force, int burn,
                         const char * name)
{
    hb_dict_t *subtitle_dict = hb_dict_init();
    hb_dict_set_int(subtitle_dict, "Track", track);
    hb_dict_set_bool(subtitle_dict, "Default", make_default);
    hb_dict_set_bool(subtitle_dict, "Forced", force);
    hb_dict_set_bool(subtitle_dict, "Burn", burn);
    if (name != ((void*)0) && name[0] != 0)
    {
        hb_dict_set_string(subtitle_dict, "Name", name);
    }
    hb_value_array_append(list, subtitle_dict);
}
