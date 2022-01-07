
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int MARK_BG_DIRTY (int) ;
 int WRITE_BYTE (int ,int,int ) ;
 int addr ;
 int code ;
 int dmafill ;
 int* reg ;
 int sat ;
 int sat_addr_mask ;
 int sat_base_mask ;
 int satb ;
 int vram ;

__attribute__((used)) static void vdp_dma_fill(unsigned int length)
{

  if ((code & 0x1F) == 0x01)
  {
    int name;
    uint8 data = dmafill;

    do
    {

      if ((addr & sat_base_mask) == satb)
      {

        WRITE_BYTE(sat, (addr & sat_addr_mask) ^ 1, data);
      }


      WRITE_BYTE(vram, addr ^ 1, data);


      MARK_BG_DIRTY (addr);


      addr += reg[15];
    }
    while (--length);
  }
  else
  {

    addr += reg[15] * length;
  }
}
