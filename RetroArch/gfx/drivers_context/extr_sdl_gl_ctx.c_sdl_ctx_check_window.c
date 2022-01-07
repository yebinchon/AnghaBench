
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int g_resized; unsigned int g_new_width; unsigned int g_new_height; } ;
typedef TYPE_3__ gfx_ctx_sdl_data_t ;
struct TYPE_7__ {unsigned int w; unsigned int h; } ;
struct TYPE_6__ {unsigned int data1; unsigned int data2; int event; } ;
struct TYPE_9__ {int type; TYPE_2__ resize; TYPE_1__ window; } ;
typedef TYPE_4__ SDL_Event ;



 int SDL_GETEVENT ;
 scalar_t__ SDL_PeepEvents (TYPE_4__*,int,int ,int,...) ;
 int SDL_PumpEvents () ;

 int SDL_QUITMASK ;

 int SDL_VIDEORESIZEMASK ;

 int SDL_WINDOWEVENT_RESIZED ;

__attribute__((used)) static void sdl_ctx_check_window(void *data, bool *quit,
      bool *resize,unsigned *width,
      unsigned *height,
      bool is_shutdown)
{
   SDL_Event event;
   gfx_ctx_sdl_data_t *sdl = (gfx_ctx_sdl_data_t*)data;

   SDL_PumpEvents();




   while (SDL_PeepEvents(&event, 1, SDL_GETEVENT, SDL_QUITMASK|SDL_VIDEORESIZEMASK) > 0)

   {
      switch (event.type)
      {
         case 130:



            *quit = 1;
            break;
         case 129:
            sdl->g_resized = 1;
            sdl->g_new_width = event.resize.w;
            sdl->g_new_height = event.resize.h;

            break;
         default:
            break;
      }
   }

   if (sdl->g_resized)
   {
      *width = sdl->g_new_width;
      *height = sdl->g_new_height;
      *resize = 1;
      sdl->g_resized = 0;
   }
}
