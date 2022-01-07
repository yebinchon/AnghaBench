
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float (* get_sensor_input ) (scalar_t__,unsigned int,unsigned int) ;} ;


 TYPE_1__* current_input ;
 scalar_t__ current_input_data ;
 float stub1 (scalar_t__,unsigned int,unsigned int) ;

float input_sensor_get_input(unsigned port, unsigned id)
{
   if (current_input_data &&
         current_input->get_sensor_input)
      return current_input->get_sensor_input(current_input_data,
            port, id);
   return 0.0f;
}
