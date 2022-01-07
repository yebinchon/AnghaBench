
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32_t ;
struct retro_keybind {int key; } ;
struct TYPE_9__ {scalar_t__ keybind; } ;
struct TYPE_10__ {TYPE_2__ target; } ;
struct TYPE_11__ {TYPE_3__ value; } ;
typedef TYPE_4__ rarch_setting_t ;
struct TYPE_12__ {TYPE_4__* setting; } ;
typedef TYPE_5__ menu_file_list_cbs_t ;
typedef scalar_t__ int32_t ;
struct TYPE_13__ {TYPE_1__* list; } ;
typedef TYPE_6__ file_list_t ;
typedef enum retro_key { ____Placeholder_retro_key } retro_key ;
struct TYPE_8__ {scalar_t__ actiondata; } ;


 TYPE_6__* menu_entries_get_selection_buf_ptr_internal (int ) ;

void menu_entry_bind_key_set(uint32_t i, int32_t value)
{
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr_internal(0);
   menu_file_list_cbs_t *cbs = selection_buf ?
      (menu_file_list_cbs_t*)selection_buf->list[i].actiondata : ((void*)0);
   rarch_setting_t *setting = cbs ? cbs->setting : ((void*)0);
   struct retro_keybind *keybind = setting ? (struct retro_keybind*)setting->value.target.keybind : ((void*)0);
   if (keybind)
      keybind->key = (enum retro_key)value;
}
