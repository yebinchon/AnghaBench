
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int buffer_num; } ;
struct TYPE_9__ {int actions; int index; int buffers_in_transit; scalar_t__ buffers; scalar_t__ populated; TYPE_3__* mmal; int pool; scalar_t__ format_changed; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_1__ MMALOMX_PORT_T ;
typedef int MMALOMX_COMPONENT_T ;


 int LOG_WARN (char*,scalar_t__) ;
 int MMALOMX_ACTION_CHECK_ALLOCATED ;
 int MMALOMX_ACTION_CHECK_DEALLOCATED ;
 int MMALOMX_ACTION_CHECK_FLUSHED ;
 int MMALOMX_ACTION_DISABLE ;
 int MMALOMX_ACTION_ENABLE ;
 int MMALOMX_ACTION_FLUSH ;
 int MMALOMX_ACTION_NOTIFY_DISABLE ;
 int MMALOMX_ACTION_NOTIFY_ENABLE ;
 int MMALOMX_ACTION_NOTIFY_FLUSH ;
 int MMALOMX_ACTION_PENDING_DISABLE ;
 int MMALOMX_ACTION_PENDING_ENABLE ;
 int MMALOMX_ACTION_PENDING_FLUSH ;
 int MMALOMX_LOCK_PORT (int *,TYPE_1__*) ;
 int MMALOMX_UNLOCK_PORT (int *,TYPE_1__*) ;
 scalar_t__ MMAL_FALSE ;
 scalar_t__ MMAL_SUCCESS ;
 int OMX_CommandFlush ;
 int OMX_CommandPortDisable ;
 int OMX_CommandPortEnable ;
 int OMX_EventCmdComplete ;
 int OMX_EventError ;
 scalar_t__ mmal_pool_resize (int ,int ,int ) ;
 int mmal_port_disable (TYPE_3__*) ;
 scalar_t__ mmal_port_enable (TYPE_3__*,int ) ;
 int mmal_port_flush (TYPE_3__*) ;
 scalar_t__ mmal_port_format_commit (TYPE_3__*) ;
 int mmalil_error_to_omx (scalar_t__) ;
 int mmalomx_buffer_cb_io ;
 int mmalomx_callback_event_handler (int *,int ,int ,int ,int *) ;

__attribute__((used)) static void mmalomx_commands_check_port_actions(MMALOMX_COMPONENT_T *component,
   MMALOMX_PORT_T *port)
{
   uint32_t exec_actions = 0;
   MMAL_STATUS_T status;

   MMALOMX_LOCK_PORT(component, port);
   if (!port->actions)
   {
      MMALOMX_UNLOCK_PORT(component, port);
      return;
   }

   if (port->actions & MMALOMX_ACTION_FLUSH)
   {
      port->actions &= ~MMALOMX_ACTION_FLUSH;
      port->actions |= MMALOMX_ACTION_PENDING_FLUSH;
      exec_actions |= MMALOMX_ACTION_PENDING_FLUSH;
   }
   if ((port->actions & MMALOMX_ACTION_DISABLE) &&
       (!port->buffers_in_transit ||
        !(port->actions & MMALOMX_ACTION_CHECK_FLUSHED)))
   {
      port->actions &= ~MMALOMX_ACTION_DISABLE;
      port->actions |= MMALOMX_ACTION_PENDING_DISABLE;
      exec_actions |= MMALOMX_ACTION_PENDING_DISABLE;
   }
   if ((port->actions & MMALOMX_ACTION_ENABLE) &&
       port->buffers)
   {





      port->actions &= ~MMALOMX_ACTION_ENABLE;
      port->actions |= MMALOMX_ACTION_PENDING_ENABLE;
      exec_actions |= MMALOMX_ACTION_PENDING_ENABLE;
   }
   MMALOMX_UNLOCK_PORT(component, port);

   if (exec_actions & MMALOMX_ACTION_PENDING_FLUSH)
      mmal_port_flush(port->mmal);

   if (exec_actions & MMALOMX_ACTION_PENDING_DISABLE)
   {
      mmal_port_disable(port->mmal);



      if (port->format_changed)
      {
         status = mmal_port_format_commit(port->mmal);
         if (status != MMAL_SUCCESS)
            LOG_WARN("could not commit new format (%i)", status);
         port->format_changed = MMAL_FALSE;
      }
   }

   if (exec_actions & MMALOMX_ACTION_PENDING_ENABLE)
   {
      status = mmal_port_enable(port->mmal, mmalomx_buffer_cb_io);
      if (status == MMAL_SUCCESS)
         status = mmal_pool_resize(port->pool, port->mmal->buffer_num, 0);
      if (status != MMAL_SUCCESS)
         mmalomx_callback_event_handler(component, OMX_EventError, mmalil_error_to_omx(status), 0, ((void*)0));

   }

   MMALOMX_LOCK_PORT(component, port);

   port->actions &= ~exec_actions;
   if ((port->actions & MMALOMX_ACTION_CHECK_ALLOCATED) && port->populated)
      port->actions &= ~MMALOMX_ACTION_CHECK_ALLOCATED;
   if ((port->actions & MMALOMX_ACTION_CHECK_DEALLOCATED) && !port->buffers)
      port->actions &= ~MMALOMX_ACTION_CHECK_DEALLOCATED;
   if ((port->actions & MMALOMX_ACTION_CHECK_FLUSHED) && !port->buffers_in_transit)
      port->actions &= ~MMALOMX_ACTION_CHECK_FLUSHED;
   exec_actions = port->actions;

   if (port->actions == MMALOMX_ACTION_NOTIFY_FLUSH ||
       port->actions == MMALOMX_ACTION_NOTIFY_ENABLE ||
       port->actions == MMALOMX_ACTION_NOTIFY_DISABLE)
      port->actions = 0;

   MMALOMX_UNLOCK_PORT(component, port);

   if (exec_actions == MMALOMX_ACTION_NOTIFY_FLUSH)
      mmalomx_callback_event_handler(component, OMX_EventCmdComplete,
         OMX_CommandFlush, port->index, ((void*)0));
   else if (exec_actions == MMALOMX_ACTION_NOTIFY_ENABLE)
      mmalomx_callback_event_handler(component, OMX_EventCmdComplete,
         OMX_CommandPortEnable, port->index, ((void*)0));
   else if (exec_actions == MMALOMX_ACTION_NOTIFY_DISABLE)
      mmalomx_callback_event_handler(component, OMX_EventCmdComplete,
         OMX_CommandPortDisable, port->index, ((void*)0));
}
