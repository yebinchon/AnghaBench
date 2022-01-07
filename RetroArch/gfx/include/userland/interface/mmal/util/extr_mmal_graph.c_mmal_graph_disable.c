
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int connection_num; int * connection; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_GRAPH_T ;
typedef TYPE_1__ MMAL_GRAPH_PRIVATE_T ;


 int LOG_TRACE (char*,int *) ;
 scalar_t__ MMAL_SUCCESS ;
 int graph_stop_worker_thread (TYPE_1__*) ;
 scalar_t__ mmal_connection_disable (int ) ;

MMAL_STATUS_T mmal_graph_disable(MMAL_GRAPH_T *graph)
{
   MMAL_GRAPH_PRIVATE_T *private = (MMAL_GRAPH_PRIVATE_T *)graph;
   MMAL_STATUS_T status = MMAL_SUCCESS;
   unsigned int i;

   LOG_TRACE("graph: %p", graph);

   graph_stop_worker_thread(private);


   for (i = 0; i < private->connection_num; i++)
   {
      status = mmal_connection_disable(private->connection[i]);
      if (status != MMAL_SUCCESS)
         break;
   }

   return status;
}
