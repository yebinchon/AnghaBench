
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int* data; int** analog_state; } ;
typedef TYPE_1__ gca_pad_t ;


 int RARCH_LOG (char*,int ,int) ;
 int * axes ;

__attribute__((used)) static void wiiu_gca_update_analog_state(gca_pad_t *pad)
{
   int pad_axis;
   int16_t interpolated;
   unsigned stick, axis;




   for (pad_axis = 0; pad_axis < 4; pad_axis++)
   {
      axis = pad_axis % 2 ? 0 : 1;
      stick = pad_axis / 2;
      interpolated = pad->data[3 + pad_axis];

      interpolated = (axis) ?
         ((interpolated - 128) * 256) :
         ((interpolated - 128) * -256);

      pad->analog_state[stick][axis] = interpolated;



   }
}
