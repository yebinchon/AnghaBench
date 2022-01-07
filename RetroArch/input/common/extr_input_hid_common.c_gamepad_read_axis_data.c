
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ axis; int is_negative; } ;
typedef TYPE_1__ axis_data ;


 scalar_t__ AXIS_INVALID ;
 scalar_t__ AXIS_NEG_GET (int ) ;
 scalar_t__ AXIS_POS_GET (int ) ;

void gamepad_read_axis_data(uint32_t axis, axis_data *data)
{
   if(!data)
      return;

   data->axis = AXIS_POS_GET(axis);
   data->is_negative = 0;

   if(data->axis >= AXIS_INVALID)
   {
      data->axis = AXIS_NEG_GET(axis);
      data->is_negative = 1;
   }
}
