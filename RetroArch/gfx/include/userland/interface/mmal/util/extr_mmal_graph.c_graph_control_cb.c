
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int cmd; } ;
struct TYPE_12__ {int event_cb_data; int (* event_cb ) (int *,TYPE_1__*,TYPE_3__*,int ) ;} ;
struct TYPE_11__ {scalar_t__ index; scalar_t__ type; int name; scalar_t__ userdata; } ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef int MMAL_GRAPH_T ;
typedef TYPE_2__ MMAL_GRAPH_PRIVATE_T ;
typedef TYPE_3__ MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*,int,int) ;
 int LOG_TRACE (char*,int ,TYPE_1__*,TYPE_3__*,char*) ;
 int mmal_buffer_header_release (TYPE_3__*) ;
 int stub1 (int *,TYPE_1__*,TYPE_3__*,int ) ;

__attribute__((used)) static void graph_control_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_GRAPH_PRIVATE_T *graph = (MMAL_GRAPH_PRIVATE_T *)port->userdata;

   LOG_TRACE("port: %s(%p), buffer: %p, event: %4.4s", port->name, port,
             buffer, (char *)&buffer->cmd);

   if (graph->event_cb)
   {
      graph->event_cb((MMAL_GRAPH_T *)graph, port, buffer, graph->event_cb_data);
   }
   else
   {
      LOG_ERROR("event lost on port %i,%i (event callback not defined)",
                (int)port->type, (int)port->index);
      mmal_buffer_header_release(buffer);
   }
}
