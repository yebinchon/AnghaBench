
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int clock_discont; } ;
struct TYPE_12__ {unsigned int clock_num; TYPE_4__** clock; TYPE_1__* priv; } ;
struct TYPE_11__ {TYPE_3__* priv; } ;
struct TYPE_10__ {TYPE_2__* module; } ;
struct TYPE_9__ {int stream; } ;
struct TYPE_8__ {TYPE_6__* module; } ;
typedef TYPE_5__ MMAL_COMPONENT_T ;
typedef TYPE_6__ MMAL_COMPONENT_MODULE_T ;


 int MMAL_TRUE ;
 int clock_reset_stream (int ) ;

__attribute__((used)) static void clock_reset_clocks(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   unsigned i;

   for (i = 0; i < component->clock_num; ++i)
      clock_reset_stream(component->clock[i]->priv->module->stream);

   module->clock_discont = MMAL_TRUE;
}
