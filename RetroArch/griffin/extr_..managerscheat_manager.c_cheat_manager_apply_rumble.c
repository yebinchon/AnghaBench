
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_cheat {int rumble_type; unsigned int rumble_prev_value; unsigned int rumble_value; int rumble_initialized; scalar_t__ rumble_primary_end_time; int rumble_primary_duration; scalar_t__ rumble_secondary_end_time; int rumble_secondary_duration; int rumble_secondary_strength; int rumble_port; int rumble_primary_strength; } ;


 int RETRO_RUMBLE_STRONG ;
 int RETRO_RUMBLE_WEAK ;
 scalar_t__ cpu_features_get_time_usec () ;
 int input_driver_set_rumble_state (int ,int ,int ) ;

void cheat_manager_apply_rumble(struct item_cheat *cheat, unsigned int curr_value)
{
   bool rumble = 0;

   switch (cheat->rumble_type)
   {
      case 135:
         return;
      case 138:
         rumble = (curr_value != cheat->rumble_prev_value);
         break;
      case 134:
         rumble = (curr_value == cheat->rumble_prev_value);
         break;
      case 131:
         rumble = (curr_value > cheat->rumble_prev_value);
         break;
      case 137:
         rumble = (curr_value < cheat->rumble_prev_value);
         break;
      case 133:
         rumble = (curr_value == cheat->rumble_value);
         break;
      case 128:
         rumble = (curr_value != cheat->rumble_value);
         break;
      case 129:
         rumble = (curr_value < cheat->rumble_value);
         break;
      case 132:
         rumble = (curr_value > cheat->rumble_value);
         break;
      case 130:
         rumble = (curr_value == cheat->rumble_prev_value + cheat->rumble_value);
         break;
      case 136:
         rumble = (curr_value == cheat->rumble_prev_value - cheat->rumble_value);
         break;
   }

   cheat->rumble_prev_value = curr_value;



   if (cheat->rumble_initialized > 300)
   {
      if (rumble)
      {
         cheat->rumble_primary_end_time = cpu_features_get_time_usec() + (cheat->rumble_primary_duration * 1000);
         cheat->rumble_secondary_end_time = cpu_features_get_time_usec() + (cheat->rumble_secondary_duration * 1000);
         input_driver_set_rumble_state(cheat->rumble_port, RETRO_RUMBLE_STRONG, cheat->rumble_primary_strength);
         input_driver_set_rumble_state(cheat->rumble_port, RETRO_RUMBLE_WEAK, cheat->rumble_secondary_strength);
      }
   }
   else
   {
      cheat->rumble_initialized++;
      return;
   }

   if (cheat->rumble_primary_end_time <= cpu_features_get_time_usec())
   {
      if (cheat->rumble_primary_end_time != 0)
         input_driver_set_rumble_state(cheat->rumble_port, RETRO_RUMBLE_STRONG, 0);
      cheat->rumble_primary_end_time = 0;
   }
   else
   {
      input_driver_set_rumble_state(cheat->rumble_port, RETRO_RUMBLE_STRONG, cheat->rumble_primary_strength);
   }

   if (cheat->rumble_secondary_end_time <= cpu_features_get_time_usec())
   {
      if (cheat->rumble_secondary_end_time != 0)
         input_driver_set_rumble_state(cheat->rumble_port, RETRO_RUMBLE_WEAK, 0);
      cheat->rumble_secondary_end_time = 0;
   }
   else
      input_driver_set_rumble_state(cheat->rumble_port, RETRO_RUMBLE_WEAK, cheat->rumble_secondary_strength);
}
