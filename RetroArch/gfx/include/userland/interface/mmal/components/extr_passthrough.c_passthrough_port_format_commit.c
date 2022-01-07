
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; size_t index; int format; TYPE_2__* component; } ;
struct TYPE_6__ {TYPE_1__** output; } ;
struct TYPE_5__ {int format; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;


 int LOG_ERROR (char*) ;
 int MMAL_EINVAL ;
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ;
 int mmal_format_full_copy (int ,int ) ;

__attribute__((used)) static MMAL_STATUS_T passthrough_port_format_commit(MMAL_PORT_T *port)
{

   if (port->type == MMAL_PORT_TYPE_OUTPUT)
   {
      LOG_ERROR("output port is read-only");
      return MMAL_EINVAL;
   }

   return mmal_format_full_copy(port->component->output[port->index]->format, port->format);
}
