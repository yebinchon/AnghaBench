
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int writer; } ;
struct TYPE_12__ {TYPE_1__* priv; } ;
struct TYPE_11__ {int buffer_size_recommended; int buffer_size_min; int buffer_num_recommended; int buffer_num_min; int format; TYPE_3__* priv; TYPE_5__* component; } ;
struct TYPE_10__ {TYPE_2__* module; } ;
struct TYPE_9__ {int format; } ;
struct TYPE_8__ {TYPE_6__* module; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_4__ MMAL_PORT_T ;
typedef TYPE_5__ MMAL_COMPONENT_T ;
typedef TYPE_6__ MMAL_COMPONENT_MODULE_T ;


 scalar_t__ MMAL_EINVAL ;
 scalar_t__ MMAL_SUCCESS ;
 int READER_MIN_BUFFER_NUM ;
 int READER_MIN_BUFFER_SIZE ;
 int READER_RECOMMENDED_BUFFER_NUM ;
 int READER_RECOMMENDED_BUFFER_SIZE ;
 scalar_t__ mmal_to_container_format (int ,int ) ;

__attribute__((used)) static MMAL_STATUS_T container_port_set_format(MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   MMAL_STATUS_T status;

   if(!module->writer)
      return MMAL_EINVAL;


   status = mmal_to_container_format(port->priv->module->format, port->format);
   if (status != MMAL_SUCCESS)
      return status;

   port->buffer_num_min = READER_MIN_BUFFER_NUM;
   port->buffer_num_recommended = READER_RECOMMENDED_BUFFER_NUM;
   port->buffer_size_min = READER_MIN_BUFFER_SIZE;
   port->buffer_size_recommended = READER_RECOMMENDED_BUFFER_SIZE;
   return MMAL_SUCCESS;
}
