
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_keybind {void* mbutton; int joyaxis; void* joykey; int key; } ;


 int AXIS_NONE ;
 void* NO_BTN ;
 int RETROK_UNKNOWN ;
 unsigned char atoi (char const*) ;
 struct retro_keybind** input_config_binds ;
 unsigned int input_config_translate_str_to_bind_id (char const*) ;
 int menu_entries_get_last_stack (int *,char const**,int *,int *,int *) ;
 scalar_t__ string_is_equal (char const*,char*) ;

__attribute__((used)) static int action_scan_input_desc(const char *path,
      const char *label, unsigned type, size_t idx)
{
   const char *menu_label = ((void*)0);
   unsigned key = 0;
   unsigned inp_desc_user = 0;
   struct retro_keybind *target = ((void*)0);

   menu_entries_get_last_stack(((void*)0), &menu_label, ((void*)0), ((void*)0), ((void*)0));

   if (string_is_equal(menu_label, "deferred_user_binds_list"))
   {
      unsigned char player_no_str = atoi(&label[1]);

      inp_desc_user = (unsigned)(player_no_str - 1);


      key = (unsigned)(idx - 7);
   }
   else
      key = input_config_translate_str_to_bind_id(label);

   target = &input_config_binds[inp_desc_user][key];

   if (target)
   {
      target->key = RETROK_UNKNOWN;
      target->joykey = NO_BTN;
      target->joyaxis = AXIS_NONE;
      target->mbutton = NO_BTN;
   }

   return 0;
}
