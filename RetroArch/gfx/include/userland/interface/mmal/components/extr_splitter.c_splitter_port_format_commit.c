
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned int output_num; TYPE_1__** output; } ;
struct TYPE_6__ {scalar_t__ type; int format; TYPE_3__* component; } ;
struct TYPE_5__ {int format; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;


 int LOG_ERROR (char*) ;
 scalar_t__ MMAL_EINVAL ;
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ;
 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_format_full_copy (int ,int ) ;

__attribute__((used)) static MMAL_STATUS_T splitter_port_format_commit(MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_STATUS_T status;
   unsigned int i;


   if (port->type == MMAL_PORT_TYPE_OUTPUT)
   {
      LOG_ERROR("output port is read-only");
      return MMAL_EINVAL;
   }


   for (i = 0; i < component->output_num; i++)
   {
      status = mmal_format_full_copy(component->output[i]->format, port->format);
      if (status != MMAL_SUCCESS)
         return status;
   }

   return MMAL_SUCCESS;
}
