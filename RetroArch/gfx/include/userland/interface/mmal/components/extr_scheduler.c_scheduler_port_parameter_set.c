
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_10__ {TYPE_1__** input; } ;
struct TYPE_9__ {int buffer_size_recommended; int buffer_size_min; int buffer_num_recommended; int buffer_num_min; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_7__ {size_t index; void* buffer_size_recommended; void* buffer_size_min; void* buffer_num_recommended; void* buffer_num_min; TYPE_4__* component; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_PARAMETER_HEADER_T ;
typedef TYPE_3__ MMAL_PARAMETER_BUFFER_REQUIREMENTS_T ;
typedef TYPE_4__ MMAL_COMPONENT_T ;


 int MMAL_ENOSYS ;
 void* MMAL_MAX (void*,int ) ;

 int MMAL_SUCCESS ;

__attribute__((used)) static MMAL_STATUS_T scheduler_port_parameter_set(MMAL_PORT_T *port, const MMAL_PARAMETER_HEADER_T *param)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_PORT_T *in = component->input[port->index], *out = component->input[port->index];

   switch (param->id)
   {
   case 128:
      {

         const MMAL_PARAMETER_BUFFER_REQUIREMENTS_T *req = (const MMAL_PARAMETER_BUFFER_REQUIREMENTS_T *)param;
         uint32_t buffer_num_min = MMAL_MAX(port->buffer_num_min, req->buffer_num_min);
         uint32_t buffer_num_recommended = MMAL_MAX(port->buffer_num_recommended, req->buffer_num_recommended);
         uint32_t buffer_size_min = MMAL_MAX(port->buffer_size_min, req->buffer_size_min);
         uint32_t buffer_size_recommended = MMAL_MAX(port->buffer_size_recommended, req->buffer_size_recommended);

         in->buffer_num_min = buffer_num_min;
         in->buffer_num_recommended = buffer_num_recommended;
         in->buffer_size_min = buffer_size_min;
         in->buffer_size_recommended = buffer_size_recommended;
         out->buffer_num_min = buffer_num_min;
         out->buffer_num_recommended = buffer_num_recommended;
         out->buffer_size_min = buffer_size_min;
         out->buffer_size_recommended = buffer_size_recommended;
      }
      return MMAL_SUCCESS;

   default:
      return MMAL_ENOSYS;
   }
}
