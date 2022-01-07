
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int hb_builtin_presets_json ;
 int hb_dict_get (int *,char*) ;
 int hb_presets_add_internal (int ) ;
 int hb_presets_clean (int ) ;
 int hb_presets_cli_default ;
 int hb_value_dup (int ) ;
 int hb_value_free (int **) ;
 int * hb_value_json (int ) ;

int hb_presets_cli_default_init(void)
{
    hb_value_t * dict = hb_value_json(hb_builtin_presets_json);
    hb_presets_cli_default = hb_value_dup(hb_dict_get(dict, "PresetCLIDefault"));
    hb_presets_clean(hb_presets_cli_default);

    int result = hb_presets_add_internal(hb_presets_cli_default);
    hb_value_free(&dict);
    return result;
}
