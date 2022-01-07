
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dinput_input {int const* joypad; } ;
typedef int input_device_driver_t ;



__attribute__((used)) static const input_device_driver_t *dinput_get_joypad_driver(void *data)
{
   struct dinput_input *di = (struct dinput_input*)data;
   if (!di)
      return ((void*)0);
   return di->joypad;
}
