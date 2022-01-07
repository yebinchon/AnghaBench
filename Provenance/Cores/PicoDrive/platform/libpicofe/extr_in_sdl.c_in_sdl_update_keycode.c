
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_sdl_state {int dummy; } ;


 int collect_events (struct in_sdl_state*,int*,int*) ;

__attribute__((used)) static int in_sdl_update_keycode(void *drv_data, int *is_down)
{
 struct in_sdl_state *state = drv_data;
 int ret_kc = -1, ret_down = 0;

 collect_events(state, &ret_kc, &ret_down);

 if (is_down != ((void*)0))
  *is_down = ret_down;

 return ret_kc;
}
