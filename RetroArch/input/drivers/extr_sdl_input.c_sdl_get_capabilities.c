
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int RETRO_DEVICE_ANALOG ;
 int RETRO_DEVICE_JOYPAD ;
 int RETRO_DEVICE_KEYBOARD ;
 int RETRO_DEVICE_LIGHTGUN ;
 int RETRO_DEVICE_MOUSE ;
 int RETRO_DEVICE_POINTER ;

__attribute__((used)) static uint64_t sdl_get_capabilities(void *data)
{
   uint64_t caps = 0;

   caps |= (1 << RETRO_DEVICE_JOYPAD);
   caps |= (1 << RETRO_DEVICE_MOUSE);
   caps |= (1 << RETRO_DEVICE_KEYBOARD);
   caps |= (1 << RETRO_DEVICE_LIGHTGUN);
   caps |= (1 << RETRO_DEVICE_POINTER);
   caps |= (1 << RETRO_DEVICE_ANALOG);

   return caps;
}
