
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_value_array_t ;
typedef int hb_dict_t ;


 scalar_t__ HB_VALUE_TYPE_DICT ;
 int * hb_dict_get (int const*,char*) ;
 int * hb_dict_init () ;
 int hb_dict_set (int *,char*,int *) ;
 int hb_preset_template ;
 int hb_preset_version_major ;
 int hb_preset_version_micro ;
 int hb_preset_version_minor ;
 int hb_value_array_append (int *,int *) ;
 int * hb_value_array_init () ;
 int * hb_value_dup (int const*) ;
 int * hb_value_int (int ) ;
 scalar_t__ hb_value_type (int const*) ;
 int presets_clean (int *,int ) ;

__attribute__((used)) static hb_value_t * presets_package(const hb_value_t *presets)
{
    hb_dict_t *packaged_presets;
    if (hb_value_type(presets) != HB_VALUE_TYPE_DICT ||
        hb_dict_get(presets, "VersionMajor") == ((void*)0))
    {

        packaged_presets = hb_dict_init();
        hb_dict_set(packaged_presets, "VersionMajor",
                    hb_value_int(hb_preset_version_major));
        hb_dict_set(packaged_presets, "VersionMinor",
                    hb_value_int(hb_preset_version_minor));
        hb_dict_set(packaged_presets, "VersionMicro",
                    hb_value_int(hb_preset_version_micro));


        hb_dict_t *tmp = hb_value_dup(presets);
        if (hb_value_type(presets) == HB_VALUE_TYPE_DICT)
        {
            hb_value_array_t *array = hb_value_array_init();
            hb_value_array_append(array, tmp);
            tmp = array;
        }
        presets_clean(tmp, hb_preset_template);
        hb_dict_set(packaged_presets, "PresetList", tmp);
    }
    else
    {

        hb_dict_t *tmp = hb_value_dup(presets);
        presets_clean(tmp, hb_preset_template);
        packaged_presets = tmp;
    }
    return packaged_presets;
}
