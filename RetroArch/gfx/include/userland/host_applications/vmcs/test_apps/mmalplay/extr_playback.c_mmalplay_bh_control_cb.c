
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int status; } ;
struct TYPE_11__ {scalar_t__ cmd; scalar_t__ data; } ;
struct TYPE_10__ {int name; scalar_t__ userdata; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;
typedef TYPE_3__ MMALPLAY_T ;


 int LOG_INFO (char*,int ,...) ;
 int LOG_TRACE (char*,int ,TYPE_1__*,TYPE_2__*,char*) ;
 scalar_t__ MMAL_EVENT_EOS ;
 scalar_t__ MMAL_EVENT_ERROR ;
 int mmal_buffer_header_release (TYPE_2__*) ;
 int mmal_status_to_string (int ) ;
 int mmalplay_stop (TYPE_3__*) ;

__attribute__((used)) static void mmalplay_bh_control_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMALPLAY_T *ctx = (MMALPLAY_T *)port->userdata;
   LOG_TRACE("%s(%p),%p,%4.4s", port->name, port, buffer, (char *)&buffer->cmd);

   if (buffer->cmd == MMAL_EVENT_ERROR || buffer->cmd == MMAL_EVENT_EOS)
   {
      if (buffer->cmd == MMAL_EVENT_ERROR)
      {
         LOG_INFO("error event from %s: %s", port->name,
                  mmal_status_to_string(*(MMAL_STATUS_T*)buffer->data));
         ctx->status = *(MMAL_STATUS_T *)buffer->data;
      }
      else if (buffer->cmd == MMAL_EVENT_EOS)
         LOG_INFO("%s: EOS received", port->name);
      mmalplay_stop(ctx);
   }

   mmal_buffer_header_release(buffer);
}
