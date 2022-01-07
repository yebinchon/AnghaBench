
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ flags; int queue; scalar_t__ user_data; } ;
struct TYPE_6__ {int sema; } ;
typedef TYPE_1__ MMAL_GRAPH_PRIVATE_T ;
typedef TYPE_2__ MMAL_CONNECTION_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 scalar_t__ MMAL_CONNECTION_FLAG_DIRECT ;
 int graph_process_buffer (TYPE_1__*,TYPE_2__*,int *) ;
 int * mmal_queue_get (int ) ;
 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void graph_connection_cb(MMAL_CONNECTION_T *connection)
{
   MMAL_GRAPH_PRIVATE_T *graph = (MMAL_GRAPH_PRIVATE_T *)connection->user_data;
   MMAL_BUFFER_HEADER_T *buffer;

   if (connection->flags == MMAL_CONNECTION_FLAG_DIRECT &&
       (buffer = mmal_queue_get(connection->queue)) != ((void*)0))
   {
      graph_process_buffer(graph, connection, buffer);
      return;
   }

   vcos_semaphore_post(&graph->sema);
}
