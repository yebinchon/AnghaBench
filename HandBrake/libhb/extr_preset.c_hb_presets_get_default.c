
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_preset_index_t ;
typedef int hb_dict_t ;


 int free (int *) ;
 int * hb_preset_get (int *) ;
 int * hb_presets_get_default_index () ;

hb_dict_t * hb_presets_get_default(void)
{
    hb_dict_t * preset;
    hb_preset_index_t * path = hb_presets_get_default_index();

    preset = hb_preset_get(path);
    free(path);
    return preset;
}
