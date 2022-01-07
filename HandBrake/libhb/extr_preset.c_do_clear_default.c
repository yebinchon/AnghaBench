
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int preset_do_context_t ;
typedef int hb_value_t ;


 int PRESET_DO_NEXT ;
 int hb_dict_set (int *,char*,int ) ;
 int hb_value_bool (int ) ;

__attribute__((used)) static int do_clear_default(hb_value_t *preset, preset_do_context_t *ctx)
{
    hb_dict_set(preset, "Default", hb_value_bool(0));
    return PRESET_DO_NEXT;
}
