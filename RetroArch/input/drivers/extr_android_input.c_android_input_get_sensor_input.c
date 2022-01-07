
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float x; float y; float z; } ;
struct TYPE_4__ {TYPE_1__ accelerometer_state; } ;
typedef TYPE_2__ android_input_t ;






__attribute__((used)) static float android_input_get_sensor_input(void *data,
      unsigned port,unsigned id)
{
   android_input_t *android = (android_input_t*)data;

   switch (id)
   {
      case 130:
         return android->accelerometer_state.x;
      case 129:
         return android->accelerometer_state.y;
      case 128:
         return android->accelerometer_state.z;
   }

   return 0;
}
