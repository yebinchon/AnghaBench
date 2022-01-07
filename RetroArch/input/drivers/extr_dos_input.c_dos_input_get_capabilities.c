
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int RETRO_DEVICE_JOYPAD ;
 int UINT64_C (int) ;

__attribute__((used)) static uint64_t dos_input_get_capabilities(void *data)
{
   uint64_t caps = 0;

   caps |= UINT64_C(1) << RETRO_DEVICE_JOYPAD;

   return caps;
}
