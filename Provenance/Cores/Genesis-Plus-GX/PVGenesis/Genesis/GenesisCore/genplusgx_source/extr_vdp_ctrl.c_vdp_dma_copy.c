
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef scalar_t__ uint16 ;


 int MARK_BG_DIRTY (unsigned int) ;
 int READ_BYTE (int ,scalar_t__) ;
 int WRITE_BYTE (int ,unsigned int,int ) ;
 unsigned int addr ;
 int code ;
 scalar_t__ dma_src ;
 unsigned int* reg ;
 int sat ;
 unsigned int sat_addr_mask ;
 unsigned int sat_base_mask ;
 unsigned int satb ;
 int vram ;

__attribute__((used)) static void vdp_dma_copy(unsigned int length)
{

  if ((code & 0x1E) == 0x10)
  {
    int name;
    uint8 data;


    uint16 source = dma_src;

    do
    {

      data = READ_BYTE(vram, source);


      if ((addr & sat_base_mask) == satb)
      {

        WRITE_BYTE(sat, addr & sat_addr_mask, data);
      }


      WRITE_BYTE(vram, addr, data);


      MARK_BG_DIRTY(addr);


      source++;


      addr += reg[15];
    }
    while (--length);


    dma_src = source;
  }
  else
  {

    addr += reg[15] * length;
    dma_src += length;
  }
}
