
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int preset_do_context_t ;
typedef int hb_value_t ;


 scalar_t__ HB_PRESET_TYPE_OFFICIAL ;
 int PRESET_DO_DELETE ;
 int PRESET_DO_NEXT ;
 int hb_dict_get (int *,char*) ;
 scalar_t__ hb_value_get_int (int ) ;

__attribute__((used)) static int do_delete_builtin(hb_value_t *preset, preset_do_context_t *ctx)
{
    if (hb_value_get_int(hb_dict_get(preset, "Type")) == HB_PRESET_TYPE_OFFICIAL)
        return PRESET_DO_DELETE;
    return PRESET_DO_NEXT;
}
