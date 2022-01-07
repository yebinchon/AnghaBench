
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int * devices; } ;
typedef TYPE_1__ qnx_input_t ;
struct TYPE_4__ {int* analog0; int* analog1; } ;
typedef TYPE_2__ qnx_input_device_t ;
typedef int int16_t ;


 int AXIS_NEG_GET (scalar_t__) ;
 scalar_t__ AXIS_NONE ;
 int AXIS_POS_GET (scalar_t__) ;
 unsigned int DEFAULT_MAX_PADS ;
 scalar_t__ input_driver_get_data () ;

__attribute__((used)) static int16_t qnx_joypad_axis(unsigned port_num, uint32_t joyaxis)
{
   int val = 0;
   int axis = -1;
   bool is_neg = 0;
   bool is_pos = 0;
   qnx_input_t *qnx = (qnx_input_t*)input_driver_get_data();

   if (!qnx || joyaxis == AXIS_NONE || port_num >= DEFAULT_MAX_PADS)
      return 0;

   if (AXIS_NEG_GET(joyaxis) < 4)
   {
      axis = AXIS_NEG_GET(joyaxis);
      is_neg = 1;
   }
   else if (AXIS_POS_GET(joyaxis) < 4)
   {
      axis = AXIS_POS_GET(joyaxis);
      is_pos = 1;
   }

   qnx_input_device_t* controller = ((void*)0);
   controller = (qnx_input_device_t*)&qnx->devices[port_num];

   switch (axis)
   {
      case 0:
         val = controller->analog0[0];
         break;
      case 1:
          val = controller->analog0[1];
         break;
      case 2:
          val = controller->analog1[0];
         break;
      case 3:
          val = controller->analog1[1];
         break;
   }

   if (is_neg && val > 0)
      val = 0;
   else if (is_pos && val < 0)
      val = 0;

   return val;
}
