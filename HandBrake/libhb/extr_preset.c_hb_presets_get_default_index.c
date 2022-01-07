
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_preset_index_t ;


 int hb_presets ;
 int * lookup_default_index (int ) ;

hb_preset_index_t * hb_presets_get_default_index(void)
{
    hb_preset_index_t *path = lookup_default_index(hb_presets);
    return path;
}
