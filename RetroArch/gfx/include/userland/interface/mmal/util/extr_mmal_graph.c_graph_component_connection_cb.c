
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {scalar_t__ flags; int queue; scalar_t__ user_data; } ;
struct TYPE_7__ {scalar_t__ module; } ;
typedef int MMAL_GRAPH_PRIVATE_T ;
typedef TYPE_2__ MMAL_CONNECTION_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 scalar_t__ MMAL_CONNECTION_FLAG_DIRECT ;
 int graph_process_buffer (int *,TYPE_2__*,int *) ;
 int mmal_component_action_trigger (TYPE_3__*) ;
 int * mmal_queue_get (int ) ;

__attribute__((used)) static void graph_component_connection_cb(MMAL_CONNECTION_T *connection)
{
   MMAL_COMPONENT_T *component = (MMAL_COMPONENT_T *)connection->user_data;
   MMAL_BUFFER_HEADER_T *buffer;

   if (connection->flags == MMAL_CONNECTION_FLAG_DIRECT &&
       (buffer = mmal_queue_get(connection->queue)) != ((void*)0))
   {
      graph_process_buffer((MMAL_GRAPH_PRIVATE_T *)component->priv->module,
         connection, buffer);
      return;
   }

   mmal_component_action_trigger(component);
}
