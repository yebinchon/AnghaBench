
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int preset_do_context_t ;
typedef int hb_value_t ;


 int PRESET_DO_NEXT ;
 int PRESET_DO_SUCCESS ;
 int hb_dict_get (int *,char*) ;
 scalar_t__ hb_value_get_bool (int ) ;

__attribute__((used)) static int do_find_default(hb_value_t *preset, preset_do_context_t *ctx)
{
    if (!hb_value_get_bool(hb_dict_get(preset, "Folder")) &&
        hb_value_get_bool(hb_dict_get(preset, "Default")))
    {
        return PRESET_DO_SUCCESS;
    }
    return PRESET_DO_NEXT;
}
