
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum retro_key { ____Placeholder_retro_key } retro_key ;


 int* SDL_GetKeyState (int*) ;
 int* SDL_GetKeyboardState (int*) ;
 unsigned int SDL_GetScancodeFromKey (unsigned int) ;
 unsigned int* rarch_keysym_lut ;

__attribute__((used)) static bool sdl_key_pressed(int key)
{
   int num_keys;




   const uint8_t *keymap = SDL_GetKeyState(&num_keys);
   unsigned sym = rarch_keysym_lut[(enum retro_key)key];


   if (sym >= (unsigned)num_keys)
      return 0;

   return keymap[sym];
}
