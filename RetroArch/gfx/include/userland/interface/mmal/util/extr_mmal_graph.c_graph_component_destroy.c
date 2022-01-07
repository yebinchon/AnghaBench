
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int (* pf_destroy ) (TYPE_4__*) ;} ;
struct TYPE_9__ {TYPE_4__ graph; } ;
struct TYPE_8__ {scalar_t__ clock_num; int clock; scalar_t__ output_num; int output; scalar_t__ input_num; int input; TYPE_1__* priv; } ;
struct TYPE_7__ {TYPE_3__* module; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;
typedef TYPE_3__ MMAL_COMPONENT_MODULE_T ;


 int MMAL_SUCCESS ;
 int mmal_graph_destroy (TYPE_4__*) ;
 int mmal_ports_clock_free (int ,scalar_t__) ;
 int mmal_ports_free (int ,scalar_t__) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static MMAL_STATUS_T graph_component_destroy(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_MODULE_T *graph = component->priv->module;


   if (graph->graph.pf_destroy)
      graph->graph.pf_destroy(&graph->graph);
   graph->graph.pf_destroy = ((void*)0);

   if (component->input_num)
      mmal_ports_free(component->input, component->input_num);

   if (component->output_num)
      mmal_ports_free(component->output, component->output_num);

   if (component->clock_num)
      mmal_ports_clock_free(component->clock, component->clock_num);


   mmal_graph_destroy(&graph->graph);
   return MMAL_SUCCESS;
}
