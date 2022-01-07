
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * output; } ;
struct TYPE_4__ {TYPE_2__* encoder_component; scalar_t__ encoder_pool; } ;
typedef TYPE_1__ RASPIVID_STATE ;


 int mmal_component_destroy (TYPE_2__*) ;
 int mmal_port_pool_destroy (int ,scalar_t__) ;

__attribute__((used)) static void destroy_encoder_component(RASPIVID_STATE *state)
{

   if (state->encoder_pool)
   {
      mmal_port_pool_destroy(state->encoder_component->output[0], state->encoder_pool);
   }

   if (state->encoder_component)
   {
      mmal_component_destroy(state->encoder_component);
      state->encoder_component = ((void*)0);
   }
}
