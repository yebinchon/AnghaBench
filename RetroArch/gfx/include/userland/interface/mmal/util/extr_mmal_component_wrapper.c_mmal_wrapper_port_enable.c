
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int64_t ;
struct TYPE_10__ {int member_1; int member_0; } ;
struct TYPE_14__ {int member_1; int hdr; TYPE_1__ member_0; } ;
struct TYPE_13__ {scalar_t__ type; size_t index; int buffer_size; scalar_t__ buffer_num; int name; scalar_t__ is_enabled; scalar_t__ userdata; } ;
struct TYPE_11__ {int time_enable; int ** output_pool; int ** input_pool; } ;
struct TYPE_12__ {TYPE_2__ wrapper; } ;
typedef TYPE_2__ MMAL_WRAPPER_T ;
typedef TYPE_3__ MMAL_WRAPPER_PRIVATE_T ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_4__ MMAL_PORT_T ;
typedef int MMAL_POOL_T ;
typedef TYPE_5__ MMAL_PARAMETER_BOOLEAN_T ;


 int LOG_ERROR (char*,...) ;
 int LOG_TRACE (char*,TYPE_2__*,int ) ;
 scalar_t__ MMAL_EINVAL ;
 scalar_t__ MMAL_ENOSYS ;
 int MMAL_PARAMETER_ZERO_COPY ;
 scalar_t__ MMAL_PORT_TYPE_INPUT ;
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE ;
 int MMAL_WRAPPER_FLAG_PAYLOAD_USE_SHARED_MEMORY ;
 scalar_t__ mmal_pool_resize (int *,scalar_t__,int) ;
 scalar_t__ mmal_port_enable (TYPE_4__*,int ) ;
 scalar_t__ mmal_port_parameter_set (TYPE_4__*,int *) ;
 int mmal_wrapper_bh_in_cb ;
 int mmal_wrapper_bh_out_cb ;
 scalar_t__ vcos_getmicrosecs () ;

MMAL_STATUS_T mmal_wrapper_port_enable(MMAL_PORT_T *port, uint32_t flags)
{
   MMAL_WRAPPER_PRIVATE_T *private = (MMAL_WRAPPER_PRIVATE_T *)port->userdata;
   MMAL_WRAPPER_T *wrapper = &private->wrapper;
   int64_t start_time = vcos_getmicrosecs();
   uint32_t buffer_size;
   MMAL_STATUS_T status;
   MMAL_POOL_T *pool;

   LOG_TRACE("%p, %s", wrapper, port->name);

   if (port->type != MMAL_PORT_TYPE_INPUT && port->type != MMAL_PORT_TYPE_OUTPUT)
      return MMAL_EINVAL;

   if (port->is_enabled)
      return MMAL_SUCCESS;

   pool = port->type == MMAL_PORT_TYPE_INPUT ?
      wrapper->input_pool[port->index] : wrapper->output_pool[port->index];
   buffer_size = (flags & MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE) ? port->buffer_size : 0;



   if (flags & MMAL_WRAPPER_FLAG_PAYLOAD_USE_SHARED_MEMORY)
   {
      MMAL_PARAMETER_BOOLEAN_T param_zc =
         {{MMAL_PARAMETER_ZERO_COPY, sizeof(MMAL_PARAMETER_BOOLEAN_T)}, 1};
      status = mmal_port_parameter_set(port, &param_zc.hdr);
      if (status != MMAL_SUCCESS && status != MMAL_ENOSYS)
      {
         LOG_ERROR("failed to set zero copy on %s", port->name);
         return status;
      }
   }


   status = mmal_pool_resize(pool, port->buffer_num, buffer_size);
   if (status != MMAL_SUCCESS)
   {
      LOG_ERROR("could not resize pool (%i/%i)", (int)port->buffer_num, (int)buffer_size);
      return status;
   }



   status = mmal_port_enable(port, port->type == MMAL_PORT_TYPE_INPUT ?
                             mmal_wrapper_bh_in_cb : mmal_wrapper_bh_out_cb);
   if (status != MMAL_SUCCESS)
   {
      LOG_ERROR("could not enable port");
      return status;
   }

   wrapper->time_enable += vcos_getmicrosecs() - start_time;
   return MMAL_SUCCESS;
}
