
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int hb_presets_import (int *,int **) ;
 int hb_value_free (int **) ;
 char* hb_value_get_json (int *) ;
 int * hb_value_json (char const*) ;

int hb_presets_import_json(const char *in, char **out)
{
    int result;

    if (out != ((void*)0))
    {
        *out = ((void*)0);
    }
    hb_value_t * dict = hb_value_json(in);
    if (dict == ((void*)0))
        return 0;

    hb_value_t * imported;
    result = hb_presets_import(dict, &imported);
    if (out != ((void*)0))
    {
        *out = hb_value_get_json(imported);
    }
    hb_value_free(&dict);
    hb_value_free(&imported);
    return result;
}
