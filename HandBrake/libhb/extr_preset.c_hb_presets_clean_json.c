
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int hb_preset_template ;
 int hb_value_free (int **) ;
 char* hb_value_get_json (int *) ;
 int * hb_value_json (char const*) ;
 int presets_clean (int *,int ) ;

char * hb_presets_clean_json(const char *json)
{
    hb_value_t * dict = hb_value_json(json);
    if (dict == ((void*)0))
        return ((void*)0);

    presets_clean(dict, hb_preset_template);
    char * result = hb_value_get_json(dict);
    hb_value_free(&dict);
    return result;
}
