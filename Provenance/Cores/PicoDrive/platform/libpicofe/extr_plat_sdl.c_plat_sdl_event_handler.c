
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int h; int w; } ;
struct TYPE_12__ {int vout_fullscreen; int vout_method; } ;
struct TYPE_9__ {int gain; } ;
struct TYPE_8__ {int h; int w; } ;
struct TYPE_11__ {int type; TYPE_2__ active; TYPE_1__ resize; } ;
struct TYPE_10__ {int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_3__ SDL_Rect ;
typedef TYPE_4__ SDL_Event ;


 int GL_QUIRK_ACTIVATE_RECREATE ;

 int SDL_DisplayYUVOverlay (int *,TYPE_3__*) ;


 int display ;
 int gl_finish () ;
 int gl_flip (int *,int ,int ) ;
 int gl_init (int ,int ,int*) ;
 int gl_quirks ;
 int old_fullscreen ;
 int plat_sdl_change_video_mode (int ,int ,int) ;
 int plat_sdl_gl_active ;
 int * plat_sdl_overlay ;
 int plat_sdl_quit_cb () ;
 TYPE_6__* plat_sdl_screen ;
 TYPE_5__ plat_target ;
 int window ;
 int window_h ;
 int window_w ;

void plat_sdl_event_handler(void *event_)
{
  static int was_active;
  SDL_Event *event = event_;

  switch (event->type) {
  case 128:

    if (plat_target.vout_method != 0
        && !plat_target.vout_fullscreen && !old_fullscreen)
    {
      window_w = event->resize.w;
      window_h = event->resize.h;
      plat_sdl_change_video_mode(0, 0, 1);
    }
    break;
  case 130:
    if (event->active.gain && !was_active) {
      if (plat_sdl_overlay != ((void*)0)) {
        SDL_Rect dstrect = { 0, 0, plat_sdl_screen->w, plat_sdl_screen->h };
        SDL_DisplayYUVOverlay(plat_sdl_overlay, &dstrect);
      }
      else if (plat_sdl_gl_active) {
        if (gl_quirks & GL_QUIRK_ACTIVATE_RECREATE) {
          gl_finish();
          plat_sdl_gl_active = (gl_init(display, window, &gl_quirks) == 0);
        }
        gl_flip(((void*)0), 0, 0);
      }

    }
    was_active = event->active.gain;
    break;
  case 129:
    if (plat_sdl_quit_cb != ((void*)0))
      plat_sdl_quit_cb();
    break;
  }
}
