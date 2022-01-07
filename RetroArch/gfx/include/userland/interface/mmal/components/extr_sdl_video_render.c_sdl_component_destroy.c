
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ queue; scalar_t__ sdl_surface; scalar_t__ sdl_overlay; scalar_t__ thread; int quit; } ;
struct TYPE_10__ {int input; scalar_t__ input_num; TYPE_1__* priv; } ;
struct TYPE_9__ {int member_0; } ;
struct TYPE_8__ {TYPE_4__* module; } ;
typedef TYPE_2__ SDL_Event ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;
typedef TYPE_4__ MMAL_COMPONENT_MODULE_T ;


 int MMAL_SUCCESS ;
 int MMAL_TRUE ;
 int SDL_FreeSurface (scalar_t__) ;
 int SDL_FreeYUVOverlay (scalar_t__) ;
 int SDL_INIT_VIDEO ;
 int SDL_PushEvent (TYPE_2__*) ;
 int SDL_QUIT ;
 int SDL_QuitSubSystem (int ) ;
 int SDL_WaitThread (scalar_t__,int *) ;
 int mmal_ports_free (int ,int) ;
 int mmal_queue_destroy (scalar_t__) ;
 int vcos_free (TYPE_4__*) ;

__attribute__((used)) static MMAL_STATUS_T sdl_component_destroy(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   SDL_Event event = {SDL_QUIT};

   module->quit = MMAL_TRUE;
   SDL_PushEvent(&event);
   if(module->thread)
      SDL_WaitThread(module->thread, ((void*)0));
   if(module->sdl_overlay)
      SDL_FreeYUVOverlay(module->sdl_overlay);
   if(module->sdl_surface)
      SDL_FreeSurface(module->sdl_surface);
   SDL_QuitSubSystem(SDL_INIT_VIDEO);

   if(component->input_num) mmal_ports_free(component->input, 1);
   if(module->queue) mmal_queue_destroy(module->queue);
   vcos_free(module);
   return MMAL_SUCCESS;
}
