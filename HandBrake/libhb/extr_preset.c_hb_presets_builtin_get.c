
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int hb_presets_builtin ;
 int * hb_value_dup (int ) ;

hb_value_t * hb_presets_builtin_get(void)
{
    return hb_value_dup(hb_presets_builtin);
}
