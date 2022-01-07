
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int * hb_preset_search (char const*,int,int) ;
 char* hb_value_get_json (int *) ;

char * hb_preset_search_json(const char *name, int recurse, int type)
{
    hb_value_t * preset;
    char *json;
    preset = hb_preset_search(name, recurse, type);
    if (preset == ((void*)0))
        return ((void*)0);
    json = hb_value_get_json(preset);
    return json;
}
