
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addr ;
 unsigned int* fifo ;
 scalar_t__ pending ;
 scalar_t__* reg ;
 unsigned int* vram ;

__attribute__((used)) static unsigned int vdp_z80_data_r_m4(void)
{

  unsigned int data = fifo[0];


  pending = 0;


  fifo[0] = vram[addr & 0x3FFF];


  addr += (reg[15] + 1);


  return data;
}
