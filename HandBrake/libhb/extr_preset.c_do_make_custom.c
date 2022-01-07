
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int preset_do_context_t ;
typedef int hb_value_t ;


 int HB_PRESET_TYPE_CUSTOM ;
 int PRESET_DO_NEXT ;
 int hb_dict_set_int (int *,char*,int ) ;

__attribute__((used)) static int do_make_custom(hb_value_t *preset, preset_do_context_t *ctx)
{
    hb_dict_set_int(preset, "Type", HB_PRESET_TYPE_CUSTOM);
    return PRESET_DO_NEXT;
}
