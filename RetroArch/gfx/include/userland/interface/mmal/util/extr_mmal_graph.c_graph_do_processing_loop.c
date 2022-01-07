
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {scalar_t__ module; } ;
typedef int MMAL_GRAPH_PRIVATE_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;


 scalar_t__ graph_do_processing (int *) ;

__attribute__((used)) static void graph_do_processing_loop(MMAL_COMPONENT_T *component)
{
   while (graph_do_processing((MMAL_GRAPH_PRIVATE_T *)component->priv->module));
}
