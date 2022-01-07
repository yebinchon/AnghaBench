
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int name; } ;
struct TYPE_6__ {scalar_t__ connection_num; TYPE_2__** connection; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_GRAPH_T ;
typedef TYPE_1__ MMAL_GRAPH_PRIVATE_T ;
typedef TYPE_2__ MMAL_CONNECTION_T ;


 scalar_t__ GRAPH_CONNECTIONS_MAX ;
 int LOG_ERROR (char*,int ) ;
 int LOG_TRACE (char*,int *,int ,TYPE_2__*) ;
 int MMAL_EINVAL ;
 int MMAL_ENOSPC ;
 int MMAL_SUCCESS ;
 int mmal_connection_acquire (TYPE_2__*) ;

MMAL_STATUS_T mmal_graph_add_connection(MMAL_GRAPH_T *graph, MMAL_CONNECTION_T *cx)
{
   MMAL_GRAPH_PRIVATE_T *private = (MMAL_GRAPH_PRIVATE_T *)graph;

   LOG_TRACE("graph: %p, connection: %s(%p)", graph, cx ? cx->name: 0, cx);

   if (!cx)
      return MMAL_EINVAL;

   if (private->connection_num >= GRAPH_CONNECTIONS_MAX)
   {
      LOG_ERROR("no space for connection %s", cx->name);
      return MMAL_ENOSPC;
   }

   mmal_connection_acquire(cx);
   private->connection[private->connection_num++] = cx;
   return MMAL_SUCCESS;
}
