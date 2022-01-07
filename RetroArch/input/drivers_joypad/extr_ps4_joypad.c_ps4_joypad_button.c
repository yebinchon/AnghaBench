
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 unsigned int PS4_MAX_ORBISPADS ;
 int UINT64_C (int) ;
 int* pad_state ;

__attribute__((used)) static bool ps4_joypad_button(unsigned port_num, uint16_t joykey)
{
   if (port_num >= PS4_MAX_ORBISPADS)
      return 0;
   return (pad_state[port_num] & (UINT64_C(1) << joykey));
}
