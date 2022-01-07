
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_sdl_state {int * joy; } ;


 int SDL_JoystickClose (int *) ;
 int free (struct in_sdl_state*) ;

__attribute__((used)) static void in_sdl_free(void *drv_data)
{
 struct in_sdl_state *state = drv_data;

 if (state != ((void*)0)) {
  if (state->joy != ((void*)0))
   SDL_JoystickClose(state->joy);
  free(state);
 }
}
