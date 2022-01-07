
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int udev_input_t ;


 int BIT_GET (int ,int) ;
 int* rarch_keysym_lut ;
 int udev_key_state ;

__attribute__((used)) static bool udev_keyboard_pressed(udev_input_t *udev, unsigned key)
{
   int bit = rarch_keysym_lut[key];
   return BIT_GET(udev_key_state,bit);
}
