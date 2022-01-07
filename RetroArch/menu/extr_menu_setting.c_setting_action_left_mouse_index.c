
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* input_mouse_index; } ;
struct TYPE_7__ {int modified; TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {size_t index_offset; } ;
typedef TYPE_3__ rarch_setting_t ;


 TYPE_2__* config_get_ptr () ;

__attribute__((used)) static int setting_action_left_mouse_index(rarch_setting_t *setting, bool wraparound)
{
   settings_t *settings = config_get_ptr();

   if (!setting)
      return -1;

   if (settings->uints.input_mouse_index[setting->index_offset])
   {
      --settings->uints.input_mouse_index[setting->index_offset];
      settings->modified = 1;
   }

   return 0;
}
