
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int int16_t ;
struct TYPE_5__ {int is_negative; int axis; } ;
typedef TYPE_1__ axis_data ;
struct TYPE_7__ {int (* get_axis_value ) (int ,int ,int ) ;int (* read_axis_data ) (scalar_t__,TYPE_1__*) ;} ;
struct TYPE_6__ {int analog_state; } ;


 scalar_t__ AXIS_NONE ;
 int kpad_query_pad (unsigned int) ;
 TYPE_4__ pad_functions ;
 int stub1 (scalar_t__,TYPE_1__*) ;
 int stub2 (int ,int ,int ) ;
 int to_wiimote_channel (unsigned int) ;
 TYPE_2__* wiimotes ;

__attribute__((used)) static int16_t kpad_axis(unsigned pad, uint32_t axis)
{
   axis_data data;
   int channel = to_wiimote_channel(pad);

   if (!kpad_query_pad(pad) || channel < 0 || axis == AXIS_NONE)
      return 0;

   pad_functions.read_axis_data(axis, &data);
   return pad_functions.get_axis_value(data.axis,
         wiimotes[channel].analog_state,
         data.is_negative);
}
