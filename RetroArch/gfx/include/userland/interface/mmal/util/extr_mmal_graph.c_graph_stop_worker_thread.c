
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thread; int sema; int stop_thread; } ;
typedef TYPE_1__ MMAL_GRAPH_PRIVATE_T ;


 int MMAL_TRUE ;
 int vcos_semaphore_post (int *) ;
 int vcos_thread_join (int *,int *) ;

__attribute__((used)) static void graph_stop_worker_thread(MMAL_GRAPH_PRIVATE_T *graph)
{
   graph->stop_thread = MMAL_TRUE;
   vcos_semaphore_post(&graph->sema);
   vcos_thread_join(&graph->thread, ((void*)0));
}
