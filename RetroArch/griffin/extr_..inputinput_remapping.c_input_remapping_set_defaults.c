
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct retro_keybind {unsigned int id; } ;
struct TYPE_8__ {unsigned int** input_remap_ids; scalar_t__* input_libretro_device; scalar_t__* input_analog_dpad_mode; int ** input_keymapper_ids; } ;
struct TYPE_9__ {TYPE_2__ uints; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_7__ {int * remapfile; } ;
struct TYPE_10__ {TYPE_1__ name; } ;
typedef TYPE_4__ global_t ;


 unsigned int MAX_USERS ;
 int RARCH_CTL_UNSET_REMAPS_CONTENT_DIR_ACTIVE ;
 int RARCH_CTL_UNSET_REMAPS_CORE_ACTIVE ;
 int RARCH_CTL_UNSET_REMAPS_GAME_ACTIVE ;
 int RARCH_FIRST_CUSTOM_BIND ;
 int RETROK_UNKNOWN ;
 TYPE_3__* config_get_ptr () ;
 int free (int *) ;
 TYPE_4__* global_get_ptr () ;
 struct retro_keybind** input_config_binds ;
 scalar_t__* old_analog_dpad_mode ;
 scalar_t__* old_libretro_device ;
 int rarch_ctl (int ,int *) ;
 int string_is_empty (int *) ;

void input_remapping_set_defaults(bool deinit)
{
   unsigned i, j;
   settings_t *settings = config_get_ptr();
   global_t *global = global_get_ptr();

   if (!global)
      return;

   if (deinit)
   {
      if (!string_is_empty(global->name.remapfile))
         free(global->name.remapfile);
      global->name.remapfile = ((void*)0);
      rarch_ctl(RARCH_CTL_UNSET_REMAPS_CORE_ACTIVE, ((void*)0));
      rarch_ctl(RARCH_CTL_UNSET_REMAPS_CONTENT_DIR_ACTIVE, ((void*)0));
      rarch_ctl(RARCH_CTL_UNSET_REMAPS_GAME_ACTIVE, ((void*)0));
   }

   for (i = 0; i < MAX_USERS; i++)
   {
      for (j = 0; j < RARCH_FIRST_CUSTOM_BIND + 8; j++)
      {
         if (j < RARCH_FIRST_CUSTOM_BIND)
         {
            const struct retro_keybind *keybind = &input_config_binds[i][j];
            if (keybind)
               settings->uints.input_remap_ids[i][j] = keybind->id;
            settings->uints.input_keymapper_ids[i][j] = RETROK_UNKNOWN;
         }
         else
            settings->uints.input_remap_ids[i][j] = j;
      }

      if (old_analog_dpad_mode[i])
         settings->uints.input_analog_dpad_mode[i] = old_analog_dpad_mode[i];
      if (old_libretro_device[i])
         settings->uints.input_libretro_device[i] = old_libretro_device[i];
   }
}
