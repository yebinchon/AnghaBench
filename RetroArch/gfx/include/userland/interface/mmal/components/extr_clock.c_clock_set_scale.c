
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned int clock_num; TYPE_2__* priv; int * clock; } ;
struct TYPE_6__ {TYPE_1__* module; } ;
struct TYPE_5__ {scalar_t__ pending_scale; } ;
typedef int MMAL_RATIONAL_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;


 int mmal_port_clock_scale_set (int ,int ) ;

__attribute__((used)) static void clock_set_scale(MMAL_COMPONENT_T *component, MMAL_RATIONAL_T scale)
{
   unsigned i;

   for (i = 0; i < component->clock_num; ++i)
      mmal_port_clock_scale_set(component->clock[i], scale);

   component->priv->module->pending_scale = 0;
}
