
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {int length; int flags; int data; } ;
struct TYPE_17__ {scalar_t__ is_enabled; scalar_t__ userdata; } ;
struct TYPE_16__ {int complete_semaphore; TYPE_2__* pstate; scalar_t__ file_handle; } ;
struct TYPE_15__ {TYPE_1__* encoder_pool; } ;
struct TYPE_14__ {int queue; } ;
typedef TYPE_3__ PORT_USERDATA ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_4__ MMAL_PORT_T ;
typedef TYPE_5__ MMAL_BUFFER_HEADER_T ;


 int MMAL_BUFFER_HEADER_FLAG_FRAME_END ;
 int MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED ;
 scalar_t__ MMAL_SUCCESS ;
 int fwrite (int ,int,int,scalar_t__) ;
 int mmal_buffer_header_mem_lock (TYPE_5__*) ;
 int mmal_buffer_header_mem_unlock (TYPE_5__*) ;
 int mmal_buffer_header_release (TYPE_5__*) ;
 scalar_t__ mmal_port_send_buffer (TYPE_4__*,TYPE_5__*) ;
 TYPE_5__* mmal_queue_get (int ) ;
 int vcos_log_error (char*) ;
 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void encoder_buffer_callback(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   int complete = 0;



   PORT_USERDATA *pData = (PORT_USERDATA *)port->userdata;

   if (pData)
   {
      int bytes_written = buffer->length;

      if (buffer->length && pData->file_handle)
      {
         mmal_buffer_header_mem_lock(buffer);

         bytes_written = fwrite(buffer->data, 1, buffer->length, pData->file_handle);

         mmal_buffer_header_mem_unlock(buffer);
      }


      if (bytes_written != buffer->length)
      {
         vcos_log_error("Unable to write buffer to file - aborting");
         complete = 1;
      }


      if (buffer->flags & (MMAL_BUFFER_HEADER_FLAG_FRAME_END | MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED))
         complete = 1;
   }
   else
   {
      vcos_log_error("Received a encoder buffer callback with no state");
   }


   mmal_buffer_header_release(buffer);


   if (port->is_enabled)
   {
      MMAL_STATUS_T status = MMAL_SUCCESS;
      MMAL_BUFFER_HEADER_T *new_buffer;

      new_buffer = mmal_queue_get(pData->pstate->encoder_pool->queue);

      if (new_buffer)
      {
         status = mmal_port_send_buffer(port, new_buffer);
      }
      if (!new_buffer || status != MMAL_SUCCESS)
         vcos_log_error("Unable to return a buffer to the encoder port");
   }

   if (complete)
      vcos_semaphore_post(&(pData->complete_semaphore));
}
