
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int hb_presets_add (int *) ;
 int hb_value_free (int **) ;
 int * hb_value_json (char const*) ;

int hb_presets_add_json(const char *json)
{
    hb_value_t *preset = hb_value_json(json);
    if (preset == ((void*)0))
        return -1;
    int result = hb_presets_add(preset);
    hb_value_free(&preset);
    return result;
}
