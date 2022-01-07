
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_presets_builtin ;
 char* hb_value_get_json (int ) ;

char * hb_presets_builtin_get_json(void)
{
    char *json = hb_value_get_json(hb_presets_builtin);
    return json;
}
