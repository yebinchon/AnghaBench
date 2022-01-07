
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 scalar_t__ HB_VALUE_TYPE_DICT ;
 int * hb_dict_get (int *,char*) ;
 int hb_value_get_int (int *) ;
 scalar_t__ hb_value_type (int *) ;

int hb_presets_version(hb_value_t *preset, int *major, int *minor, int *micro)
{
    *major = 0; *minor = 0; *micro = 0;
    if (hb_value_type(preset) == HB_VALUE_TYPE_DICT)
    {

        hb_value_t *val = hb_dict_get(preset, "PresetName");
        if (val == ((void*)0))
        {
            val = hb_dict_get(preset, "VersionMajor");
            if (val != ((void*)0))
            {
                *major = hb_value_get_int(hb_dict_get(preset, "VersionMajor"));
                *minor = hb_value_get_int(hb_dict_get(preset, "VersionMinor"));
                *micro = hb_value_get_int(hb_dict_get(preset, "VersionMicro"));
                return 0;
            }
        }
    }
    return -1;
}
