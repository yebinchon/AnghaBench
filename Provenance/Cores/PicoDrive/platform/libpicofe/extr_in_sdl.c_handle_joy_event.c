
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct in_sdl_state {int* axis_keydown; int keystate; int joy_id; } ;
struct TYPE_6__ {int state; scalar_t__ button; int which; } ;
struct TYPE_5__ {int axis; int value; int which; } ;
struct TYPE_7__ {int type; TYPE_2__ jbutton; TYPE_1__ jaxis; } ;
typedef TYPE_3__ SDL_Event ;


 int SDLK_DOWN ;
 int SDLK_LEFT ;
 int SDLK_RIGHT ;
 int SDLK_UP ;
 int SDLK_WORLD_0 ;



 int SDL_PRESSED ;
 int update_keystate (int ,int,int) ;

__attribute__((used)) static int handle_joy_event(struct in_sdl_state *state, SDL_Event *event,
 int *kc_out, int *down_out)
{
 int kc = -1, down = 0, ret = 0;


 switch (event->type) {
 case 130:
  if (event->jaxis.which != state->joy_id)
   return -2;
  if (event->jaxis.axis > 1)
   break;
  if (-16384 <= event->jaxis.value && event->jaxis.value <= 16384) {
   kc = state->axis_keydown[event->jaxis.axis];
   state->axis_keydown[event->jaxis.axis] = 0;
   ret = 1;
  }
  else if (event->jaxis.value < -16384) {
   kc = state->axis_keydown[event->jaxis.axis];
   if (kc)
    update_keystate(state->keystate, kc, 0);
   kc = event->jaxis.axis ? SDLK_UP : SDLK_LEFT;
   state->axis_keydown[event->jaxis.axis] = kc;
   down = 1;
   ret = 1;
  }
  else if (event->jaxis.value > 16384) {
   kc = state->axis_keydown[event->jaxis.axis];
   if (kc)
    update_keystate(state->keystate, kc, 0);
   kc = event->jaxis.axis ? SDLK_DOWN : SDLK_RIGHT;
   state->axis_keydown[event->jaxis.axis] = kc;
   down = 1;
   ret = 1;
  }
  break;

 case 129:
 case 128:
  if (event->jbutton.which != state->joy_id)
   return -2;
  kc = (int)event->jbutton.button + SDLK_WORLD_0;
  down = event->jbutton.state == SDL_PRESSED;
  ret = 1;
  break;
 default:
  return -1;
 }

 if (ret)
  update_keystate(state->keystate, kc, down);
 if (kc_out != ((void*)0))
  *kc_out = kc;
 if (down_out != ((void*)0))
  *down_out = down;

 return ret;
}
