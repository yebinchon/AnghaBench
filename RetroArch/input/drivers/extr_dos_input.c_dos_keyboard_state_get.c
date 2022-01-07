
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int ** dos_key_state ;

uint16_t *dos_keyboard_state_get(unsigned port)
{
   return dos_key_state[port];
}
