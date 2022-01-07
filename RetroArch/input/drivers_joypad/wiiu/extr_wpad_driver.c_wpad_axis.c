
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int int16_t ;
struct TYPE_4__ {int is_negative; int axis; } ;
typedef TYPE_1__ axis_data ;
struct TYPE_5__ {int (* get_axis_value ) (int ,int ,int ) ;int (* read_axis_data ) (scalar_t__,TYPE_1__*) ;} ;


 scalar_t__ AXIS_NONE ;
 int analog_state ;
 TYPE_3__ pad_functions ;
 int stub1 (scalar_t__,TYPE_1__*) ;
 int stub2 (int ,int ,int ) ;
 int wpad_query_pad (unsigned int) ;

__attribute__((used)) static int16_t wpad_axis(unsigned pad, uint32_t axis)
{
   axis_data data;

   if (!wpad_query_pad(pad) || axis == AXIS_NONE)
      return 0;

   pad_functions.read_axis_data(axis, &data);
   return pad_functions.get_axis_value(data.axis, analog_state, data.is_negative);
}
