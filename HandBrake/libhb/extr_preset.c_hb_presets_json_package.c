
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int hb_value_free (int **) ;
 char* hb_value_get_json (int *) ;
 int * hb_value_json (char const*) ;
 int * presets_package (int *) ;

char * hb_presets_json_package(const char *in_json)
{
    hb_value_t *preset = hb_value_json(in_json);
    hb_value_t *packaged_preset = presets_package(preset);

    if (packaged_preset == ((void*)0))
        return ((void*)0);
    char *out_json = hb_value_get_json(packaged_preset);
    hb_value_free(&packaged_preset);
    hb_value_free(&preset);
    return out_json;
}
