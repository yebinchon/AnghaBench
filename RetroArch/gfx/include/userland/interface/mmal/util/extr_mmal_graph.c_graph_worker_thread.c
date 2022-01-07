
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ stop_thread; int sema; } ;
typedef TYPE_1__ MMAL_GRAPH_PRIVATE_T ;


 int LOG_TRACE (char*,TYPE_1__*) ;
 scalar_t__ graph_do_processing (TYPE_1__*) ;
 int vcos_semaphore_wait (int *) ;

__attribute__((used)) static void* graph_worker_thread(void* ctx)
{
   MMAL_GRAPH_PRIVATE_T *graph = (MMAL_GRAPH_PRIVATE_T *)ctx;

   while (1)
   {
      vcos_semaphore_wait(&graph->sema);
      if (graph->stop_thread)
         break;
      while(graph_do_processing(graph));
   }

   LOG_TRACE("worker thread exit %p", graph);

   return 0;
}
