
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;


 int dma_src ;
 int* reg ;
 int vdp_bus_w (int ) ;
 scalar_t__ work_ram ;

__attribute__((used)) static void vdp_dma_68k_ram(unsigned int length)
{
  uint16 data;


  uint32 source = (reg[23] << 17) | (dma_src << 1);

  do
  {

    data = *(uint16 *)(work_ram + (source & 0xFFFF));


    source += 2;


    source = (reg[23] << 17) | (source & 0x1FFFF);


    vdp_bus_w(data);
  }
  while (--length);


  dma_src = (source >> 1) & 0xffff;
}
