
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct MMAL_GRAPH_USERDATA_T {int dummy; } ;
struct TYPE_8__ {struct MMAL_GRAPH_USERDATA_T* userdata; } ;
struct TYPE_9__ {int sema; TYPE_1__ graph; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_GRAPH_T ;
typedef TYPE_2__ MMAL_GRAPH_PRIVATE_T ;


 int LOG_ERROR (char*,TYPE_1__**) ;
 int LOG_TRACE (char*,TYPE_1__**,unsigned int) ;
 int MMAL_EINVAL ;
 int MMAL_ENOMEM ;
 int MMAL_ENOSPC ;
 int MMAL_SUCCESS ;
 scalar_t__ VCOS_SUCCESS ;
 TYPE_2__* vcos_calloc (int,int,char*) ;
 int vcos_free (TYPE_2__*) ;
 scalar_t__ vcos_semaphore_create (int *,char*,int ) ;

MMAL_STATUS_T mmal_graph_create(MMAL_GRAPH_T **graph, unsigned int userdata_size)
{
   MMAL_GRAPH_PRIVATE_T *private;

   LOG_TRACE("graph %p, userdata_size %u", graph, userdata_size);


   if (!graph)
      return MMAL_EINVAL;

   private = vcos_calloc(1, sizeof(MMAL_GRAPH_PRIVATE_T) + userdata_size, "mmal connection graph");
   if (!private)
      return MMAL_ENOMEM;
   *graph = &private->graph;
   if (userdata_size)
      (*graph)->userdata = (struct MMAL_GRAPH_USERDATA_T *)&private[1];

   if (vcos_semaphore_create(&private->sema, "mmal graph sema", 0) != VCOS_SUCCESS)
   {
      LOG_ERROR("failed to create semaphore %p", graph);
      vcos_free(private);
      return MMAL_ENOSPC;
   }

   return MMAL_SUCCESS;
}
