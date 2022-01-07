
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_7__ {TYPE_1__* module; } ;
struct TYPE_6__ {int latency; } ;
typedef TYPE_3__ MMAL_COMPONENT_T ;
typedef int MMAL_CLOCK_LATENCY_T ;


 int clock_reset_clocks (TYPE_3__*) ;

__attribute__((used)) static void clock_process_latency_event(MMAL_COMPONENT_T *component, const MMAL_CLOCK_LATENCY_T *latency)
{
   component->priv->module->latency = *latency;

   clock_reset_clocks(component);
}
