
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int quit; } ;
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {int type; } ;
struct TYPE_7__ {TYPE_4__* module; } ;
typedef TYPE_2__ SDL_Event ;
typedef TYPE_3__ MMAL_COMPONENT_T ;
typedef TYPE_4__ MMAL_COMPONENT_MODULE_T ;


 int MMAL_SUCCESS ;

 scalar_t__ SDL_WaitEvent (TYPE_2__*) ;
 int mmal_event_error_send (TYPE_3__*,int ) ;

__attribute__((used)) static int sdl_event_thread(void *arg)
{
   MMAL_COMPONENT_T *component = (MMAL_COMPONENT_T *)arg;
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   SDL_Event event;

   while (SDL_WaitEvent(&event))
   {
      switch (event.type)
      {
      case 128:
         if (!module->quit)
            mmal_event_error_send(component, MMAL_SUCCESS);
         return 0;
      default:
         break;
      }
   }

   return 0;
}
