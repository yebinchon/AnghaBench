
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum retro_sensor_action { ____Placeholder_retro_sensor_action } retro_sensor_action ;
struct TYPE_2__ {int (* set_sensor_state ) (scalar_t__,unsigned int,int,unsigned int) ;} ;


 TYPE_1__* current_input ;
 scalar_t__ current_input_data ;
 int stub1 (scalar_t__,unsigned int,int,unsigned int) ;

bool input_sensor_set_state(unsigned port,
      enum retro_sensor_action action, unsigned rate)
{
   if (current_input_data &&
         current_input->set_sensor_state)
      return current_input->set_sensor_state(current_input_data,
            port, action, rate);
   return 0;
}
