
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int cycles; } ;
struct TYPE_4__ {int boot; } ;
struct TYPE_5__ {TYPE_1__ cartridge; } ;


 int SYSTEM_MCD ;
 int addr ;
 unsigned int addr_latch ;
 unsigned int cached_write ;
 int code ;
 int dma_length ;
 int dma_src ;
 int dma_type ;
 int dmafill ;
 int fifo_latency ;
 TYPE_3__ m68k ;
 int pending ;
 int* reg ;
 TYPE_2__ scd ;
 int svp ;
 int system_hw ;
 int vdp_dma_update (int ) ;
 int vdp_reg_w (unsigned int,unsigned int,int ) ;

void vdp_68k_ctrl_w(unsigned int data)
{

  if (pending == 0)
  {

    if (dma_length)
    {



      if (dma_type < 2)
      {

        cached_write = data;
        return;
      }
    }


    if ((data & 0xC000) == 0x8000)
    {

      vdp_reg_w((data >> 8) & 0x1F, data & 0xFF, m68k.cycles);
    }
    else
    {

      pending = reg[1] & 4;
    }


    addr = addr_latch | (data & 0x3FFF);
    code = ((code & 0x3C) | ((data >> 14) & 0x03));
  }
  else
  {

    pending = 0;


    addr_latch = (data & 3) << 14;


    addr = addr_latch | (addr & 0x3FFF);
    code = ((code & 0x03) | ((data >> 2) & 0x3C));


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
            vdp_dma_update(m68k.cycles);
            break;
          }

          default:
          {

            dma_length = (reg[20] << 8) | reg[19];


            if (!dma_length)
            {
              dma_length = 0x10000;
            }


            dma_src = (reg[22] << 8) | reg[21];


            if (((system_hw == SYSTEM_MCD) && ((reg[23] & 0x70) == ((scd.cartridge.boot >> 1) + 0x10))) || (svp && !(reg[23] & 0x60)))
            {



              addr += reg[15];
              dma_length--;
            }


            dma_type = (code & 0x06) ? 0 : 1;
            vdp_dma_update(m68k.cycles);
            break;
          }
        }
      }
    }
  }
  fifo_latency = (reg[12] & 1) ? 190 : 214;
  fifo_latency <<= ((code & 0x0F) < 0x03);
}
