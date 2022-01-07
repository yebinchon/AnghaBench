
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int hb_preset_template ;
 int presets_clean (int *,int ) ;

void hb_presets_clean(hb_value_t *preset)
{
    presets_clean(preset, hb_preset_template);
}
