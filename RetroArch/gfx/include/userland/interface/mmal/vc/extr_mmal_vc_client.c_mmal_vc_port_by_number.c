
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int input_num; int output_num; int clock_num; int ** clock; int ** output; int ** input; int * control; } ;
typedef int MMAL_PORT_T ;
typedef TYPE_1__ MMAL_COMPONENT_T ;






 int vcos_assert (int) ;

__attribute__((used)) static MMAL_PORT_T *mmal_vc_port_by_number(MMAL_COMPONENT_T *component, uint32_t type, uint32_t number)
{
   switch (type)
   {
      case 130:
         vcos_assert(number == 0);
         return component->control;
      case 129:
         vcos_assert(number < component->input_num);
         return component->input[number];
      case 128:
         vcos_assert(number < component->output_num);
         return component->output[number];
      case 131:
         vcos_assert(number < component->clock_num);
         return component->clock[number];
   }

   return ((void*)0);
}
