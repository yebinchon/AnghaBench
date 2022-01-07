
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int hb_presets_add_internal (int *) ;
 int * presets_unpackage (int *) ;

int hb_presets_add(hb_value_t *preset)
{
    if (preset == ((void*)0))
        return -1;

    preset = presets_unpackage(preset);
    if (preset == ((void*)0))
        return -1;

    return hb_presets_add_internal(preset);
}
