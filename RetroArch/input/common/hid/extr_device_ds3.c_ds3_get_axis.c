
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_5__ {int analog_state; } ;
typedef TYPE_1__ ds3_instance_t ;
struct TYPE_6__ {int axis; } ;
typedef TYPE_2__ axis_data ;


 int gamepad_get_axis_value (int ,TYPE_2__*) ;
 int gamepad_read_axis_data (unsigned int,TYPE_2__*) ;

__attribute__((used)) static int16_t ds3_get_axis(void *data, unsigned axis)
{
   axis_data axis_data;
   ds3_instance_t *pad = (ds3_instance_t *)data;

   gamepad_read_axis_data(axis, &axis_data);

   if(!pad || axis_data.axis >= 4)
      return 0;

   return gamepad_get_axis_value(pad->analog_state, &axis_data);
}
