
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * preview_component; } ;
typedef TYPE_1__ RASPIPREVIEW_PARAMETERS ;


 int mmal_component_destroy (int *) ;

void raspipreview_destroy(RASPIPREVIEW_PARAMETERS *state)
{
   if (state->preview_component)
   {
      mmal_component_destroy(state->preview_component);
      state->preview_component = ((void*)0);
   }
}
