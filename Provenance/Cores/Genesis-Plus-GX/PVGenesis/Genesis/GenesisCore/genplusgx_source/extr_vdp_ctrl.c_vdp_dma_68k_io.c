
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;


 int dma_src ;
 int io_68k_read (int) ;
 int* reg ;
 int vdp_bus_w (int) ;
 scalar_t__ work_ram ;
 int zstate ;

__attribute__((used)) static void vdp_dma_68k_io(unsigned int length)
{
  uint16 data;


  uint32 source = (reg[23] << 17) | (dma_src << 1);

  do
  {

    if (source <= 0xA0FFFF)
    {


      data = ((zstate ^ 3) ? *(uint16 *)(work_ram + (source & 0xFFFF)) : 0xFFFF);
    }




    else if (source <= 0xA1001F)
    {
      data = io_68k_read((source >> 1) & 0x0F);
      data = (data << 8 | data);
    }


    else
    {
      data = *(uint16 *)(work_ram + (source & 0xFFFF));
    }


    source += 2;


    source = (reg[23] << 17) | (source & 0x1FFFF);


    vdp_bus_w(data);
  }
  while (--length);


  dma_src = (source >> 1) & 0xffff;
}
