
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ input_num; int input; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_COMPONENT_T ;


 int MMAL_SUCCESS ;
 int mmal_ports_free (int ,scalar_t__) ;

__attribute__((used)) static MMAL_STATUS_T null_sink_component_destroy(MMAL_COMPONENT_T *component)
{
   if(component->input_num)
      mmal_ports_free(component->input, component->input_num);
   return MMAL_SUCCESS;
}
