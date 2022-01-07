
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_13__ {int mouse_wu; int mouse_wd; int mouse_wl; int mouse_wr; TYPE_1__* joypad; } ;
typedef TYPE_5__ sdl_input_t ;
struct TYPE_12__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_10__ {int mod; int sym; } ;
struct TYPE_11__ {TYPE_2__ keysym; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_4__ wheel; TYPE_3__ key; } ;
struct TYPE_9__ {int (* poll ) () ;} ;
typedef TYPE_6__ SDL_Event ;


 int KMOD_ALT ;
 int KMOD_CAPS ;
 int KMOD_CTRL ;
 int KMOD_NUM ;
 int KMOD_SHIFT ;
 int RETROKMOD_ALT ;
 int RETROKMOD_CAPSLOCK ;
 int RETROKMOD_CTRL ;
 int RETROKMOD_NUMLOCK ;
 int RETROKMOD_SHIFT ;
 int RETRO_DEVICE_KEYBOARD ;
 int SDL_GETEVENT ;
 scalar_t__ SDL_KEYDOWN ;
 int SDL_KEYEVENTMASK ;
 scalar_t__ SDL_KEYUP ;
 scalar_t__ SDL_MOUSEWHEEL ;
 scalar_t__ SDL_PeepEvents (TYPE_6__*,int,int ,scalar_t__,...) ;
 int SDL_PumpEvents () ;
 int input_keyboard_event (int,unsigned int,unsigned int,int ,int ) ;
 unsigned int input_keymaps_translate_keysym_to_rk (int ) ;
 int sdl_poll_mouse (TYPE_5__*) ;
 int stub1 () ;

__attribute__((used)) static void sdl_input_poll(void *data)
{
   sdl_input_t *sdl = (sdl_input_t*)data;
   SDL_Event event;

   SDL_PumpEvents();

   if (sdl->joypad)
      sdl->joypad->poll();
   sdl_poll_mouse(sdl);




   while (SDL_PeepEvents(&event, 1, SDL_GETEVENT, SDL_KEYEVENTMASK) > 0)

   {
      if (event.type == SDL_KEYDOWN || event.type == SDL_KEYUP)
      {
         uint16_t mod = 0;
         unsigned code = input_keymaps_translate_keysym_to_rk(event.key.keysym.sym);

         if (event.key.keysym.mod & KMOD_SHIFT)
            mod |= RETROKMOD_SHIFT;

         if (event.key.keysym.mod & KMOD_CTRL)
            mod |= RETROKMOD_CTRL;

         if (event.key.keysym.mod & KMOD_ALT)
            mod |= RETROKMOD_ALT;

         if (event.key.keysym.mod & KMOD_NUM)
            mod |= RETROKMOD_NUMLOCK;

         if (event.key.keysym.mod & KMOD_CAPS)
            mod |= RETROKMOD_CAPSLOCK;

         input_keyboard_event(event.type == SDL_KEYDOWN, code, code, mod,
               RETRO_DEVICE_KEYBOARD);
      }
   }
}
