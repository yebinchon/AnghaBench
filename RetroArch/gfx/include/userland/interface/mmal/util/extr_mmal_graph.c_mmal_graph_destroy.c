
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned int connection_num; unsigned int component_num; int sema; int * component; int * connection; } ;
struct TYPE_7__ {int (* pf_destroy ) (TYPE_1__*) ;} ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_GRAPH_T ;
typedef TYPE_2__ MMAL_GRAPH_PRIVATE_T ;


 int LOG_TRACE (char*,TYPE_1__*) ;
 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 int mmal_component_release (int ) ;
 int mmal_connection_release (int ) ;
 int stub1 (TYPE_1__*) ;
 int vcos_free (TYPE_1__*) ;
 int vcos_semaphore_delete (int *) ;

MMAL_STATUS_T mmal_graph_destroy(MMAL_GRAPH_T *graph)
{
   unsigned i;
   MMAL_GRAPH_PRIVATE_T *private = (MMAL_GRAPH_PRIVATE_T *)graph;

   if (!graph)
      return MMAL_EINVAL;

   LOG_TRACE("%p", graph);


   if (graph->pf_destroy)
      graph->pf_destroy(graph);

   for (i = 0; i < private->connection_num; i++)
      mmal_connection_release(private->connection[i]);

   for (i = 0; i < private->component_num; i++)
      mmal_component_release(private->component[i]);

   vcos_semaphore_delete(&private->sema);

   vcos_free(graph);
   return MMAL_SUCCESS;
}
