
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ smooth; } ;
struct TYPE_8__ {unsigned int w; unsigned int h; int rgb32; unsigned int pitch; int active; int tex; } ;
struct TYPE_7__ {int renderer; TYPE_1__ video; TYPE_3__ frame; TYPE_3__ menu; } ;
typedef TYPE_2__ sdl2_video_t ;
typedef TYPE_3__ sdl2_tex_t ;


 int RARCH_ERR (char*,char*,int ) ;
 int SDL_BLENDMODE_BLEND ;
 int SDL_CreateTexture (int ,unsigned int,int ,unsigned int,unsigned int) ;
 int SDL_GetError () ;
 int SDL_HINT_OVERRIDE ;
 int SDL_HINT_RENDER_SCALE_QUALITY ;
 unsigned int SDL_PIXELFORMAT_ARGB8888 ;
 unsigned int SDL_PIXELFORMAT_RGB565 ;
 unsigned int SDL_PIXELFORMAT_RGBA4444 ;
 int SDL_SetHintWithPriority (int ,char*,int ) ;
 int SDL_SetTextureBlendMode (int ,int ) ;
 int SDL_TEXTUREACCESS_STREAMING ;
 int sdl_tex_zero (TYPE_3__*) ;

__attribute__((used)) static void sdl_refresh_input_size(sdl2_video_t *vid, bool menu, bool rgb32,
      unsigned width, unsigned height, unsigned pitch)
{
   sdl2_tex_t *target = menu ? &vid->menu : &vid->frame;

   if (!target->tex || target->w != width || target->h != height
       || target->rgb32 != rgb32 || target->pitch != pitch)
   {
      unsigned format;

      sdl_tex_zero(target);

      if (menu)
         format = rgb32 ? SDL_PIXELFORMAT_ARGB8888 : SDL_PIXELFORMAT_RGBA4444;
      else
         format = rgb32 ? SDL_PIXELFORMAT_ARGB8888 : SDL_PIXELFORMAT_RGB565;

      SDL_SetHintWithPriority(SDL_HINT_RENDER_SCALE_QUALITY,
                              (vid->video.smooth || menu) ? "linear" : "nearest",
                              SDL_HINT_OVERRIDE);

      target->tex = SDL_CreateTexture(vid->renderer, format,
                                      SDL_TEXTUREACCESS_STREAMING, width, height);

      if (!target->tex)
      {
         RARCH_ERR("[SDL2]: Failed to create %s texture: %s\n", menu ? "menu" : "main",
                   SDL_GetError());
         return;
      }

      if (menu)
         SDL_SetTextureBlendMode(target->tex, SDL_BLENDMODE_BLEND);

      target->w = width;
      target->h = height;
      target->pitch = pitch;
      target->rgb32 = rgb32;
      target->active = 1;
   }
}
