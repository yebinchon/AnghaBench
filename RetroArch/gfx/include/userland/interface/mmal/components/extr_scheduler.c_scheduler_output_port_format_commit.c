
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t index; TYPE_2__* component; int format; } ;
struct TYPE_6__ {TYPE_1__** input; } ;
struct TYPE_5__ {int format; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;


 int LOG_DEBUG (char*) ;
 int MMAL_SUCCESS ;
 scalar_t__ mmal_format_compare (int ,int ) ;

__attribute__((used)) static MMAL_STATUS_T scheduler_output_port_format_commit(MMAL_PORT_T *port)
{

   if (mmal_format_compare(port->format, port->component->input[port->index]->format))
      LOG_DEBUG("output port format different from input port");

   return MMAL_SUCCESS;
}
