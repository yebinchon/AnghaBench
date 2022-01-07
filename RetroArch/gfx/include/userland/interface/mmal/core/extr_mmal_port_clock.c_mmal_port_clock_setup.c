
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* user_data; } ;
struct TYPE_9__ {TYPE_5__* clock; int queue; int event_cb; } ;
struct TYPE_8__ {int buffer_size; int buffer_size_min; int capabilities; TYPE_1__* priv; void* buffer_num_recommended; void* buffer_num_min; int name; } ;
struct TYPE_7__ {int pf_payload_free; int pf_payload_alloc; int pf_connect; int pf_parameter_get; int pf_parameter_set; int pf_flush; int pf_send; int pf_disable; int pf_enable; int pf_set_format; TYPE_3__* clock; scalar_t__ module; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_PORT_CLOCK_T ;
typedef int MMAL_PORT_CLOCK_EVENT_CB ;
typedef int MMAL_CLOCK_EVENT_T ;


 int LOG_ERROR (char*,int ,int ) ;
 scalar_t__ MMAL_ENOMEM ;
 int MMAL_PORT_CAPABILITY_ALLOCATION ;
 void* MMAL_PORT_CLOCK_BUFFERS_MIN ;
 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_clock_create (TYPE_5__**) ;
 int mmal_clock_destroy (TYPE_5__*) ;
 int mmal_port_clock_connect ;
 int mmal_port_clock_disable ;
 int mmal_port_clock_enable ;
 int mmal_port_clock_flush ;
 int mmal_port_clock_parameter_get ;
 int mmal_port_clock_parameter_set ;
 int mmal_port_clock_payload_alloc ;
 int mmal_port_clock_payload_free ;
 int mmal_port_clock_send ;
 int mmal_port_clock_set_format ;
 int mmal_queue_create () ;
 int mmal_status_to_string (scalar_t__) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_clock_setup(MMAL_PORT_T *port, unsigned int extra_size,
                                           MMAL_PORT_CLOCK_EVENT_CB event_cb)
{
   MMAL_STATUS_T status;

   port->priv->clock = (MMAL_PORT_CLOCK_T*)((char*)(port->priv->module) + extra_size);

   status = mmal_clock_create(&port->priv->clock->clock);
   if (status != MMAL_SUCCESS)
   {
      LOG_ERROR("failed to create clock module on port %s (%s)",
                port->name, mmal_status_to_string(status));
      return status;
   }
   port->priv->clock->clock->user_data = port;

   port->buffer_size = sizeof(MMAL_CLOCK_EVENT_T);
   port->buffer_size_min = sizeof(MMAL_CLOCK_EVENT_T);
   port->buffer_num_min = MMAL_PORT_CLOCK_BUFFERS_MIN;
   port->buffer_num_recommended = MMAL_PORT_CLOCK_BUFFERS_MIN;

   port->priv->clock->event_cb = event_cb;
   port->priv->clock->queue = mmal_queue_create();
   if (!port->priv->clock->queue)
   {
      mmal_clock_destroy(port->priv->clock->clock);
      return MMAL_ENOMEM;
   }

   port->priv->pf_set_format = mmal_port_clock_set_format;
   port->priv->pf_enable = mmal_port_clock_enable;
   port->priv->pf_disable = mmal_port_clock_disable;
   port->priv->pf_send = mmal_port_clock_send;
   port->priv->pf_flush = mmal_port_clock_flush;
   port->priv->pf_parameter_set = mmal_port_clock_parameter_set;
   port->priv->pf_parameter_get = mmal_port_clock_parameter_get;
   port->priv->pf_connect = mmal_port_clock_connect;






   return status;
}
