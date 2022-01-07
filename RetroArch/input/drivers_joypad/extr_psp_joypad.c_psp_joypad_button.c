
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 unsigned int DEFAULT_MAX_PADS ;
 int UINT64_C (int) ;
 int* pad_state ;

__attribute__((used)) static bool psp_joypad_button(unsigned port_num, uint16_t key)
{
   if (port_num >= DEFAULT_MAX_PADS)
      return 0;

   return (pad_state[port_num] & (UINT64_C(1) << key));
}
