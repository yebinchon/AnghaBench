
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct retro_keybind {void* mbutton; int key; int joyaxis; void* joykey; } ;
struct TYPE_7__ {scalar_t__ keybind; } ;
struct TYPE_6__ {TYPE_2__ target; } ;
struct TYPE_8__ {scalar_t__ index_offset; TYPE_1__ value; } ;
typedef TYPE_3__ rarch_setting_t ;


 int AXIS_NONE ;
 unsigned int MENU_SETTINGS_BIND_BEGIN ;
 void* NO_BTN ;
 scalar_t__ retro_keybinds_1 ;
 scalar_t__ retro_keybinds_rest ;
 unsigned int setting_get_bind_type (TYPE_3__*) ;

__attribute__((used)) static int setting_bind_action_start(rarch_setting_t *setting)
{
   unsigned bind_type;
   struct retro_keybind *keybind = ((void*)0);
   struct retro_keybind *def_binds = (struct retro_keybind *)retro_keybinds_1;

   if (!setting)
      return -1;

   keybind = (struct retro_keybind*)setting->value.target.keybind;
   if (!keybind)
      return -1;

   keybind->joykey = NO_BTN;
   keybind->joyaxis = AXIS_NONE;

   if (setting->index_offset)
      def_binds = (struct retro_keybind*)retro_keybinds_rest;

   bind_type = setting_get_bind_type(setting);
   keybind->key = def_binds[bind_type - MENU_SETTINGS_BIND_BEGIN].key;

   keybind->mbutton = NO_BTN;

   return 0;
}
