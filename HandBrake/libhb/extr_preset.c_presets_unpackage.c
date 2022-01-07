
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int * hb_dict_get (int *,char*) ;
 int hb_presets_import (int *,int **) ;
 int * hb_value_array_init () ;
 int * hb_value_dup (int const*) ;
 int hb_value_free (int **) ;
 int hb_value_incref (int *) ;

__attribute__((used)) static hb_value_t * presets_unpackage(const hb_value_t *packaged_presets)
{

    hb_value_t * imported;
    hb_value_t * tmp = hb_value_dup(packaged_presets);
    hb_presets_import(tmp, &imported);
    hb_value_free(&tmp);
    if (imported == ((void*)0))
    {

        return hb_value_array_init();
    }
    hb_value_t *presets = hb_dict_get(imported, "PresetList");
    hb_value_incref(presets);
    hb_value_free(&imported);
    return presets;
}
