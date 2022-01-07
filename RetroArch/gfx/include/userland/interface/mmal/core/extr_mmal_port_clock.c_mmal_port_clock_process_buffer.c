
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_22__ {int length; int data; } ;
struct TYPE_18__ {int request_threshold; int discont_threshold; int update_threshold; int scale; int media_time; int enable; } ;
struct TYPE_21__ {scalar_t__ magic; int id; TYPE_6__* buffer; TYPE_2__ data; } ;
struct TYPE_20__ {int (* event_cb ) (TYPE_3__*,TYPE_5__*) ;int clock; } ;
struct TYPE_19__ {int name; TYPE_1__* priv; } ;
struct TYPE_17__ {TYPE_4__* clock; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_PORT_CLOCK_T ;
typedef TYPE_5__ MMAL_CLOCK_EVENT_T ;
typedef TYPE_6__ MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*,...) ;
 int LOG_TRACE (char*,int ,char*) ;


 TYPE_5__ MMAL_CLOCK_EVENT_INIT (int ) ;

 int MMAL_CLOCK_EVENT_INVALID ;
 scalar_t__ MMAL_CLOCK_EVENT_MAGIC ;





 scalar_t__ MMAL_EINVAL ;
 scalar_t__ MMAL_SUCCESS ;
 int memcpy (TYPE_5__*,int ,int) ;
 int mmal_buffer_header_mem_lock (TYPE_6__*) ;
 int mmal_buffer_header_mem_unlock (TYPE_6__*) ;
 scalar_t__ mmal_clock_active_set (int ,int ) ;
 scalar_t__ mmal_clock_discont_threshold_set (int ,int *) ;
 scalar_t__ mmal_clock_media_time_set (int ,int ) ;
 scalar_t__ mmal_clock_request_threshold_set (int ,int *) ;
 scalar_t__ mmal_clock_scale_set (int ,int ) ;
 scalar_t__ mmal_clock_update_threshold_set (int ,int *) ;
 int mmal_port_buffer_header_callback (TYPE_3__*,TYPE_6__*) ;
 int stub1 (TYPE_3__*,TYPE_5__*) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_clock_process_buffer(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_PORT_CLOCK_T *priv_clock = port->priv->clock;
   MMAL_STATUS_T status = MMAL_SUCCESS;
   MMAL_CLOCK_EVENT_T event = MMAL_CLOCK_EVENT_INIT(MMAL_CLOCK_EVENT_INVALID);

   if (buffer->length != sizeof(MMAL_CLOCK_EVENT_T))
   {
      LOG_ERROR("invalid buffer length %d expected %d",
                buffer->length, sizeof(MMAL_CLOCK_EVENT_T));
      return MMAL_EINVAL;
   }

   mmal_buffer_header_mem_lock(buffer);
   memcpy(&event, buffer->data, sizeof(MMAL_CLOCK_EVENT_T));
   mmal_buffer_header_mem_unlock(buffer);

   if (event.magic != MMAL_CLOCK_EVENT_MAGIC)
   {
      LOG_ERROR("buffer corrupt (magic %4.4s)", (char*)&event.magic);
      buffer->length = 0;
      mmal_port_buffer_header_callback(port, buffer);
      return MMAL_EINVAL;
   }

   LOG_TRACE("port %s id %4.4s", port->name, (char*)&event.id);

   switch (event.id)
   {
   case 135:
      status = mmal_clock_active_set(priv_clock->clock, event.data.enable);
      break;
   case 129:
      status = mmal_clock_media_time_set(priv_clock->clock, event.data.media_time);
      break;
   case 130:
      status = mmal_clock_scale_set(priv_clock->clock, event.data.scale);
      break;
   case 128:
      status = mmal_clock_update_threshold_set(priv_clock->clock, &event.data.update_threshold);
      break;
   case 134:
      status = mmal_clock_discont_threshold_set(priv_clock->clock, &event.data.discont_threshold);
      break;
   case 131:
      status = mmal_clock_request_threshold_set(priv_clock->clock, &event.data.request_threshold);
      break;
   case 133:
   case 132:

      break;
   default:
      LOG_ERROR("invalid event %4.4s", (char*)&event.id);
      status = MMAL_EINVAL;
      break;
   }

   if (priv_clock->event_cb && status == MMAL_SUCCESS)
   {

      event.buffer = buffer;
      priv_clock->event_cb(port, &event);
   }
   else
   {

      buffer->length = 0;
      mmal_port_buffer_header_callback(port, buffer);
   }

   return status;
}
