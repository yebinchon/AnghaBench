
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int* data; int** analog_state; } ;
typedef TYPE_1__ ds3_instance_t ;



__attribute__((used)) static void ds3_update_analog_state(ds3_instance_t *instance)
{
   int pad_axis;
   int16_t interpolated;
   unsigned stick, axis;

   for(pad_axis = 0; pad_axis < 4; pad_axis++)
   {
      axis = pad_axis % 2 ? 0 : 1;
      stick = pad_axis / 2;
      interpolated = instance->data[6+pad_axis];
      instance->analog_state[stick][axis] = (interpolated - 128) * 256;
   }
}
