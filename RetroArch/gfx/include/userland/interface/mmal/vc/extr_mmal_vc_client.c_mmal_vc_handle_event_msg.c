
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_15__ {scalar_t__ length; int data; TYPE_4__* delayed_buffer; int cmd; scalar_t__ port_num; scalar_t__ port_type; int * client_component; } ;
typedef TYPE_2__ mmal_worker_event_to_host ;
typedef scalar_t__ VCHIQ_STATUS_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
struct TYPE_16__ {scalar_t__ data; } ;
typedef TYPE_3__ VCHIQ_HEADER_T ;
struct TYPE_17__ {scalar_t__ alloc_size; int length; int data; } ;
struct TYPE_14__ {scalar_t__ magic; int (* callback_event ) (int *,TYPE_4__*) ;} ;
struct TYPE_13__ {scalar_t__ magic; TYPE_1__* client_context; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef int MMAL_COMPONENT_T ;
typedef TYPE_4__ MMAL_BUFFER_HEADER_T ;


 int LOG_DEBUG (char*,...) ;
 int LOG_ERROR (char*,...) ;
 int LOG_TRACE (char*,int) ;
 scalar_t__ MMAL_MAGIC ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_WORKER_EVENT_SPACE ;
 scalar_t__ VCHIQ_SUCCESS ;
 int memcpy (int ,int ,int) ;
 TYPE_11__* mmal_buffer_header_driver_data (TYPE_4__*) ;
 int mmal_buffer_header_release (TYPE_4__*) ;
 scalar_t__ mmal_port_event_get (int *,TYPE_4__**,int ) ;
 int * mmal_vc_port_by_number (int *,scalar_t__,scalar_t__) ;
 int stub1 (int *,TYPE_4__*) ;
 scalar_t__ vchiq_queue_bulk_receive (int ,int ,int,TYPE_3__*) ;
 int vchiq_release_message (int ,TYPE_3__*) ;
 int vcos_verify (int) ;

__attribute__((used)) static void mmal_vc_handle_event_msg(VCHIQ_HEADER_T *vchiq_header,
                                    VCHIQ_SERVICE_HANDLE_T service,
                                    void *context)
{
   mmal_worker_event_to_host *msg = (mmal_worker_event_to_host *)vchiq_header->data;
   MMAL_COMPONENT_T *component = msg->client_component;
   MMAL_BUFFER_HEADER_T *buffer;
   MMAL_STATUS_T status;
   MMAL_PORT_T *port;

   LOG_DEBUG("event to host, cmd 0x%08x len %d to component %p port (%d,%d)",
         msg->cmd, msg->length, msg->client_component, msg->port_type, msg->port_num);
   (void)context;

   port = mmal_vc_port_by_number(component, msg->port_type, msg->port_num);
   if (!vcos_verify(port))
   {
      LOG_ERROR("port (%i,%i) doesn't exist", (int)msg->port_type, (int)msg->port_num);
      goto error;
   }

   status = mmal_port_event_get(port, &buffer, msg->cmd);
   if (status != MMAL_SUCCESS)
   {
      LOG_ERROR("no event buffer available to receive event (%i)", (int)status);
      goto error;
   }

   if (!vcos_verify(msg->length <= buffer->alloc_size))
   {
      LOG_ERROR("event buffer to small to receive event (%i/%i)",
                (int)buffer->alloc_size, (int)msg->length);
      goto error;
   }
   buffer->length = msg->length;


   if (!vcos_verify(mmal_buffer_header_driver_data(buffer)->magic == MMAL_MAGIC &&
          mmal_buffer_header_driver_data(buffer)->client_context &&
          mmal_buffer_header_driver_data(buffer)->client_context->magic == MMAL_MAGIC &&
          mmal_buffer_header_driver_data(buffer)->client_context->callback_event))
   {
      LOG_ERROR("event buffers not configured properly by component");
      goto error;
   }

   if (buffer->length > MMAL_WORKER_EVENT_SPACE)
   {

      int len = buffer->length;
      len = (len+3) & (~3);
      LOG_DEBUG("queue event bulk rx: %p, %d", buffer->data, buffer->length);
      msg->delayed_buffer = buffer;

      VCHIQ_STATUS_T vst = vchiq_queue_bulk_receive(service, buffer->data, len, vchiq_header);
      if (vst != VCHIQ_SUCCESS)
      {
         LOG_TRACE("queue event bulk rx len %d failed to start", buffer->length);
         mmal_buffer_header_release(buffer);
         goto error;
      }
   }
   else
   {
      if (msg->length)
         memcpy(buffer->data, msg->data, msg->length);

      mmal_buffer_header_driver_data(buffer)->client_context->callback_event(port, buffer);
      LOG_DEBUG("done callback back to client");
      vchiq_release_message(service, vchiq_header);
   }

   return;

error:

   msg->length = 0;
   vchiq_release_message(service, vchiq_header);
}
