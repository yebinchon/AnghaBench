
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int hb_builtin_presets_json ;
 int * hb_dict_get (int *,char*) ;
 void* hb_preset_template ;
 void* hb_preset_version_major ;
 void* hb_preset_version_micro ;
 void* hb_preset_version_minor ;
 int hb_presets ;
 void* hb_presets_builtin ;
 int hb_presets_clean (void*) ;
 int hb_value_array_init () ;
 void* hb_value_dup (int *) ;
 int hb_value_free (int **) ;
 void* hb_value_get_int (int *) ;
 int * hb_value_json (int ) ;

void hb_presets_builtin_init(void)
{
    hb_value_t * dict = hb_value_json(hb_builtin_presets_json);
    hb_value_t * template = hb_dict_get(dict, "PresetTemplate");
    hb_preset_version_major = hb_value_get_int(
                              hb_dict_get(template, "VersionMajor"));
    hb_preset_version_minor = hb_value_get_int(
                              hb_dict_get(template, "VersionMinor"));
    hb_preset_version_micro = hb_value_get_int(
                              hb_dict_get(template, "VersionMicro"));
    hb_preset_template = hb_value_dup(hb_dict_get(template, "Preset"));

    hb_presets_builtin = hb_value_dup(hb_dict_get(dict, "PresetBuiltin"));
    hb_presets_clean(hb_presets_builtin);

    hb_presets = hb_value_array_init();
    hb_value_free(&dict);
}
