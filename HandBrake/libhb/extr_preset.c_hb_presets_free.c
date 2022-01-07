
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_preset_template ;
 int hb_presets ;
 int hb_presets_builtin ;
 int hb_value_free (int *) ;

void hb_presets_free(void)
{
    hb_value_free(&hb_preset_template);
    hb_value_free(&hb_presets);
    hb_value_free(&hb_presets_builtin);
}
