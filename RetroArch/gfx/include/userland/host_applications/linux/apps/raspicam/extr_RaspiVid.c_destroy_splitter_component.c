
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * output; } ;
struct TYPE_4__ {TYPE_2__* splitter_component; scalar_t__ splitter_pool; } ;
typedef TYPE_1__ RASPIVID_STATE ;


 size_t SPLITTER_OUTPUT_PORT ;
 int mmal_component_destroy (TYPE_2__*) ;
 int mmal_port_pool_destroy (int ,scalar_t__) ;

__attribute__((used)) static void destroy_splitter_component(RASPIVID_STATE *state)
{

   if (state->splitter_pool)
   {
      mmal_port_pool_destroy(state->splitter_component->output[SPLITTER_OUTPUT_PORT], state->splitter_pool);
   }

   if (state->splitter_component)
   {
      mmal_component_destroy(state->splitter_component);
      state->splitter_component = ((void*)0);
   }
}
