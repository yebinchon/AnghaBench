
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int * hb_presets_get_default () ;
 char* hb_value_get_json (int *) ;

char * hb_presets_get_default_json(void)
{

    hb_value_t *def = hb_presets_get_default();
    return hb_value_get_json(def);
}
