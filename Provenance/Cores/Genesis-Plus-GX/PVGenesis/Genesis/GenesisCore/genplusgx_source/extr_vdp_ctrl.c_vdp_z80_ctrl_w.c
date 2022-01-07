
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cycles; } ;


 TYPE_1__ Z80 ;
 int addr ;
 int addr_latch ;
 int code ;
 int dma_length ;
 int dma_src ;
 int dma_type ;
 int dmafill ;
 int * fifo ;
 int pending ;
 int* reg ;
 int vdp_dma_update (int ) ;
 int vdp_reg_w (unsigned int,int,int ) ;
 int * vram ;

void vdp_z80_ctrl_w(unsigned int data)
{
  switch (pending)
  {
    case 0:
    {

      addr_latch = data;


      pending = 1;
      return;
    }

    case 1:
    {

      addr = (addr & 0xC000) | ((data & 0x3F) << 8) | addr_latch ;
      code = ((code & 0x3C) | ((data >> 6) & 0x03));

      if ((code & 0x03) == 0x02)
      {

        vdp_reg_w(data & 0x1F, addr_latch, Z80.cycles);


        pending = 0;
        return;
      }


      pending = (reg[1] & 4) >> 1;

      if (!pending && !(code & 0x03))
      {

        fifo[0] = vram[addr & 0x3FFF];


        addr += (reg[15] + 1);
      }
      return;
    }

    case 2:
    {

      addr_latch = data;


      pending = 3;
      return;
    }

    case 3:
    {

      pending = 0;


      addr = ((addr_latch & 3) << 14) | (addr & 0x3FFF);
      code = ((code & 0x03) | ((addr_latch >> 2) & 0x3C));


      if (code & 0x20)
      {

        if (reg[1] & 0x10)
        {

          switch (reg[23] >> 6)
          {
            case 2:
            {

              dmafill = 0x100;
              break;
            }

            case 3:
            {

              dma_length = (reg[20] << 8) | reg[19];


              if (!dma_length)
              {
                dma_length = 0x10000;
              }


              dma_src = (reg[22] << 8) | reg[21];


              dma_type = 3;
              vdp_dma_update(Z80.cycles);
              break;
            }

            default:
            {

              break;
            }
          }
        }
      }
    }
    return;
  }
}
