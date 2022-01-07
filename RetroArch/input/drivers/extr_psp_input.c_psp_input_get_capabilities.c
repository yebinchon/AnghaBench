
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int RETRO_DEVICE_ANALOG ;
 int RETRO_DEVICE_JOYPAD ;
 int RETRO_DEVICE_KEYBOARD ;
 int RETRO_DEVICE_MOUSE ;

__attribute__((used)) static uint64_t psp_input_get_capabilities(void *data)
{
   (void)data;

   uint64_t caps = (1 << RETRO_DEVICE_JOYPAD) | (1 << RETRO_DEVICE_ANALOG);





   return caps;
}
