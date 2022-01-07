
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_2__ {int cycles; } ;


 int MARK_BG_DIRTY (int) ;
 unsigned int READ_BYTE (int ,int) ;
 int WRITE_BYTE (int ,int,unsigned int) ;
 TYPE_1__ Z80 ;
 int addr ;
 int bordrr ;
 int code ;
 int color_update_m5 (int,unsigned int) ;
 int * cram ;
 int dma_length ;
 int dma_type ;
 int dmafill ;
 scalar_t__ pending ;
 int* reg ;
 int sat ;
 int sat_addr_mask ;
 int sat_base_mask ;
 int satb ;
 int vdp_dma_update (int ) ;
 int vram ;
 int vsram ;

__attribute__((used)) static void vdp_z80_data_w_m5(unsigned int data)
{

  pending = 0;


  switch (code & 0x0F)
  {
    case 0x01:
    {

      int index = addr ^ 1;


      if ((index & sat_base_mask) == satb)
      {

        WRITE_BYTE(sat, index & sat_addr_mask, data);
      }


      if (data != READ_BYTE(vram, index))
      {
        int name;


        WRITE_BYTE(vram, index, data);


        MARK_BG_DIRTY (index);
      }
      break;
    }

    case 0x03:
    {

      uint16 *p = (uint16 *)&cram[addr & 0x7E];


      if (addr & 1)
      {

        data = (*p & 0x3F) | ((data & 0x0E) << 5);
      }
      else
      {

        data = (*p & 0x1C0) | ((data & 0x0E) >> 1)| ((data & 0xE0) >> 2);
      }


      if (data != *p)
      {

        int index = (addr >> 1) & 0x3F;


        *p = data;


        if (index & 0x0F)
        {

          color_update_m5(index, data);
        }


        if (index == bordrr)
        {
          color_update_m5(0x00, data);
        }
      }
      break;
    }

    case 0x05:
    {

      WRITE_BYTE(vsram, (addr & 0x7F) ^ 1, data);
      break;
    }
  }


  addr += reg[15];


  if (dmafill & 0x100)
  {

    dmafill = data;


    dma_length = (reg[20] << 8) | reg[19];


    if (!dma_length)
    {
      dma_length = 0x10000;
    }


    dma_type = 2;
    vdp_dma_update(Z80.cycles);
  }
}
