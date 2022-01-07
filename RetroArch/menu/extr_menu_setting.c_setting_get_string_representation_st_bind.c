
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct retro_keybind {int id; } ;
struct TYPE_5__ {scalar_t__ keybind; } ;
struct TYPE_6__ {TYPE_1__ target; } ;
struct TYPE_7__ {unsigned int index_offset; TYPE_2__ value; } ;
typedef TYPE_3__ rarch_setting_t ;


 scalar_t__ input_config_get_bind_auto (unsigned int,int ) ;
 int input_config_get_bind_string (char*,struct retro_keybind const*,struct retro_keybind const*,size_t) ;

__attribute__((used)) static void setting_get_string_representation_st_bind(rarch_setting_t *setting,
      char *s, size_t len)
{
   unsigned index_offset = 0;
   const struct retro_keybind* keybind = ((void*)0);
   const struct retro_keybind* auto_bind = ((void*)0);

   if (!setting)
      return;

   index_offset = setting->index_offset;
   keybind = (const struct retro_keybind*)setting->value.target.keybind;
   auto_bind = (const struct retro_keybind*)
      input_config_get_bind_auto(index_offset, keybind->id);

   input_config_get_bind_string(s, keybind, auto_bind, len);
}
