
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* priv; } ;
struct TYPE_10__ {unsigned int output_num; TYPE_1__* priv; TYPE_5__** output; } ;
struct TYPE_9__ {TYPE_2__* module; } ;
struct TYPE_8__ {scalar_t__ queue; } ;
struct TYPE_7__ {int module; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_4__ MMAL_COMPONENT_T ;


 int MMAL_SUCCESS ;
 int mmal_ports_free (TYPE_5__**,int) ;
 int mmal_queue_destroy (scalar_t__) ;
 int vcos_free (int ) ;

__attribute__((used)) static MMAL_STATUS_T artificial_camera_component_destroy(MMAL_COMPONENT_T *component)
{
   unsigned int i;

   for (i = 0; i < component->output_num; i++)
      if (component->output[i]->priv->module->queue)
         mmal_queue_destroy(component->output[i]->priv->module->queue);

   if(component->output_num)
      mmal_ports_free(component->output, component->output_num);

   vcos_free(component->priv->module);
   return MMAL_SUCCESS;
}
