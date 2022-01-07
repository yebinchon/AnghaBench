
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int input_device_driver_t ;
struct TYPE_2__ {int const* joypad; } ;
typedef TYPE_1__ dos_input_t ;



__attribute__((used)) static const input_device_driver_t *dos_input_get_joypad_driver(void *data)
{
   dos_input_t *dos = (dos_input_t*)data;
   if (dos)
      return dos->joypad;
   return ((void*)0);
}
