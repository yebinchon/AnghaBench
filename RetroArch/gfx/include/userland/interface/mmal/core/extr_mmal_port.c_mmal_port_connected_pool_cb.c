
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int length; int alloc_size; int data; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef int MMAL_POOL_T ;
typedef TYPE_1__ MMAL_BUFFER_HEADER_T ;
typedef int MMAL_BOOL_T ;


 int LOG_TRACE (char*,TYPE_1__*,int ,int ,int ) ;
 int MMAL_PARAM_UNUSED (int *) ;
 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_port_send_buffer (int *,TYPE_1__*) ;

__attribute__((used)) static MMAL_BOOL_T mmal_port_connected_pool_cb(MMAL_POOL_T *pool, MMAL_BUFFER_HEADER_T *buffer, void *userdata)
{
   MMAL_PORT_T* port = (MMAL_PORT_T*)userdata;
   MMAL_STATUS_T status;
   MMAL_PARAM_UNUSED(pool);

   LOG_TRACE("released buffer %p, data %p alloc_size %u length %u",
             buffer, buffer->data, buffer->alloc_size, buffer->length);


   status = mmal_port_send_buffer(port, buffer);


   return status != MMAL_SUCCESS;
}
