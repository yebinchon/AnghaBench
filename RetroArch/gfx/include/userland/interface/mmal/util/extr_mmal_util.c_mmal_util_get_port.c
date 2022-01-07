
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int input_num; unsigned int output_num; unsigned int clock_num; int * control; int ** clock; int ** output; int ** input; } ;
typedef int MMAL_PORT_TYPE_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_1__ MMAL_COMPONENT_T ;






 int vcos_assert (int ) ;

MMAL_PORT_T *mmal_util_get_port(MMAL_COMPONENT_T *comp, MMAL_PORT_TYPE_T type, unsigned index)
{
   unsigned num;
   MMAL_PORT_T **list;

   switch (type)
   {
   case 129:
      num = comp->input_num;
      list = comp->input;
      break;

   case 128:
      num = comp->output_num;
      list = comp->output;
      break;

   case 131:
      num = comp->clock_num;
      list = comp->clock;
      break;

   case 130:
      num = 1;
      list = &comp->control;
      break;

   default:
      vcos_assert(0);
      return ((void*)0);
   }
   if (index < num)

      return list[index];
   else
      return ((void*)0);
}
