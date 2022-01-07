
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16 ;


 int addr ;
 scalar_t__ pending ;
 scalar_t__* reg ;
 int * vram ;

__attribute__((used)) static unsigned int vdp_68k_data_r_m4(void)
{

  int index = ((addr << 1) & 0x3FC) | ((addr & 0x200) >> 8) | (addr & 0x3C00);


  pending = 0;


  addr += (reg[15] + 1);


  return *(uint16 *) &vram[index];
}
