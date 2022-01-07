
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ** android_key_state ;

uint8_t *android_keyboard_state_get(unsigned port)
{
   return android_key_state[port];
}
