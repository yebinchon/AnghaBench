
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_sdl_state {int* keystate; } ;
typedef int keybits_t ;


 int IN_BINDTYPE_COUNT ;
 size_t IN_BIND_OFFS (int,int) ;
 int KEYBITS_WORD_BITS ;
 int SDLK_LAST ;
 int collect_events (struct in_sdl_state*,int *,int *) ;

__attribute__((used)) static int in_sdl_update(void *drv_data, const int *binds, int *result)
{
 struct in_sdl_state *state = drv_data;
 keybits_t mask;
 int i, sym, bit, b;

 collect_events(state, ((void*)0), ((void*)0));

 for (i = 0; i < SDLK_LAST / KEYBITS_WORD_BITS + 1; i++) {
  mask = state->keystate[i];
  if (mask == 0)
   continue;
  for (bit = 0; mask != 0; bit++, mask >>= 1) {
   if ((mask & 1) == 0)
    continue;
   sym = i * KEYBITS_WORD_BITS + bit;

   for (b = 0; b < IN_BINDTYPE_COUNT; b++)
    result[b] |= binds[IN_BIND_OFFS(sym, b)];
  }
 }

 return 0;
}
