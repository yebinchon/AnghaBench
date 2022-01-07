
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ queue; scalar_t__ audio_opened; } ;
struct TYPE_7__ {int input; scalar_t__ input_num; TYPE_1__* priv; } ;
struct TYPE_6__ {TYPE_3__* module; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;
typedef TYPE_3__ MMAL_COMPONENT_MODULE_T ;


 int MMAL_SUCCESS ;
 int SDL_CloseAudio () ;
 int SDL_INIT_AUDIO ;
 int SDL_QuitSubSystem (int ) ;
 int mmal_ports_free (int ,int) ;
 int mmal_queue_destroy (scalar_t__) ;
 int vcos_free (TYPE_3__*) ;

__attribute__((used)) static MMAL_STATUS_T sdl_component_destroy(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;

   if (module->audio_opened)
      SDL_CloseAudio();
   SDL_QuitSubSystem(SDL_INIT_AUDIO);

   if(component->input_num) mmal_ports_free(component->input, 1);
   if(module->queue) mmal_queue_destroy(module->queue);
   vcos_free(module);
   return MMAL_SUCCESS;
}
