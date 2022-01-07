
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned int clock_num; int * clock; TYPE_2__* priv; } ;
struct TYPE_6__ {TYPE_1__* module; } ;
struct TYPE_5__ {int request_threshold; } ;
typedef TYPE_3__ MMAL_COMPONENT_T ;
typedef int MMAL_CLOCK_REQUEST_THRESHOLD_T ;


 int mmal_port_clock_request_threshold_set (int ,int const*) ;

__attribute__((used)) static void clock_process_request_threshold_event(MMAL_COMPONENT_T *component, const MMAL_CLOCK_REQUEST_THRESHOLD_T *threshold)
{
   unsigned i;

   component->priv->module->request_threshold = *threshold;

   for (i = 0; i < component->clock_num; ++i)
      mmal_port_clock_request_threshold_set(component->clock[i], threshold);
}
