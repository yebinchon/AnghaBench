
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct in_sdl_state {int keystate; } ;
struct TYPE_5__ {int sym; } ;
struct TYPE_6__ {TYPE_1__ keysym; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ key; } ;
typedef TYPE_3__ SDL_Event ;


 scalar_t__ SDL_KEYDOWN ;
 scalar_t__ SDL_KEYUP ;
 int update_keystate (int ,int,int) ;

__attribute__((used)) static int handle_event(struct in_sdl_state *state, SDL_Event *event,
 int *kc_out, int *down_out)
{
 if (event->type != SDL_KEYDOWN && event->type != SDL_KEYUP)
  return -1;

 update_keystate(state->keystate, event->key.keysym.sym,
  event->type == SDL_KEYDOWN);
 if (kc_out != ((void*)0))
  *kc_out = event->key.keysym.sym;
 if (down_out != ((void*)0))
  *down_out = event->type == SDL_KEYDOWN;

 return 1;
}
