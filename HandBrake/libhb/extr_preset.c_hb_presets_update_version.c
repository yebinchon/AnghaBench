
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 scalar_t__ HB_VALUE_TYPE_DICT ;
 int * hb_dict_get (int *,char*) ;
 int hb_dict_set (int *,char*,int ) ;
 int hb_preset_version_major ;
 int hb_preset_version_micro ;
 int hb_preset_version_minor ;
 int hb_value_incref (int *) ;
 int hb_value_int (int ) ;
 scalar_t__ hb_value_type (int *) ;
 int * presets_package (int *) ;

hb_value_t * hb_presets_update_version(hb_value_t *presets)
{
    if (hb_value_type(presets) == HB_VALUE_TYPE_DICT)
    {

        hb_value_t *val = hb_dict_get(presets, "PresetName");
        if (val == ((void*)0))
        {
            val = hb_dict_get(presets, "VersionMajor");
            if (val != ((void*)0))
            {
                hb_dict_set(presets, "VersionMajor",
                            hb_value_int(hb_preset_version_major));
                hb_dict_set(presets, "VersionMinor",
                            hb_value_int(hb_preset_version_minor));
                hb_dict_set(presets, "VersionMicro",
                            hb_value_int(hb_preset_version_micro));
                hb_value_incref(presets);
                return presets;
            }

            return ((void*)0);
        }
    }
    return presets_package(presets);
}
