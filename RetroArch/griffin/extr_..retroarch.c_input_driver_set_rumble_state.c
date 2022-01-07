
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef enum retro_rumble_effect { ____Placeholder_retro_rumble_effect } retro_rumble_effect ;
struct TYPE_2__ {int (* set_rumble ) (int ,unsigned int,int,int ) ;} ;


 TYPE_1__* current_input ;
 int current_input_data ;
 int stub1 (int ,unsigned int,int,int ) ;

bool input_driver_set_rumble_state(unsigned port,
      enum retro_rumble_effect effect, uint16_t strength)
{
   if (!current_input || !current_input->set_rumble)
      return 0;
   return current_input->set_rumble(current_input_data,
         port, effect, strength);
}
