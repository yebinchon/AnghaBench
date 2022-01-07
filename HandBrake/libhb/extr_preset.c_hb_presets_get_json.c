
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int * hb_presets_get () ;
 char* hb_value_get_json (int *) ;

char * hb_presets_get_json(void)
{
    char * result;
    hb_value_t *presets = hb_presets_get();
    result = hb_value_get_json(presets);
    return result;
}
