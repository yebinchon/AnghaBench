
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int (* pf_graph_enable ) (TYPE_4__*,int ) ;} ;
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {TYPE_4__ graph; } ;
struct TYPE_6__ {TYPE_2__* module; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_GRAPH_PRIVATE_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;


 int MMAL_ENOSYS ;
 int MMAL_TRUE ;
 int stub1 (TYPE_4__*,int ) ;

__attribute__((used)) static MMAL_STATUS_T graph_component_enable(MMAL_COMPONENT_T *component)
{
   MMAL_GRAPH_PRIVATE_T *graph_private = component->priv->module;
   MMAL_STATUS_T status = MMAL_ENOSYS;


   if (graph_private->graph.pf_graph_enable)
      status = graph_private->graph.pf_graph_enable(&graph_private->graph, MMAL_TRUE);

   return status;
}
