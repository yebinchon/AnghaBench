
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * camera_component; } ;
typedef TYPE_1__ RASPIVID_STATE ;


 int mmal_component_destroy (int *) ;

__attribute__((used)) static void destroy_camera_component(RASPIVID_STATE *state)
{
   if (state->camera_component)
   {
      mmal_component_destroy(state->camera_component);
      state->camera_component = ((void*)0);
   }
}
