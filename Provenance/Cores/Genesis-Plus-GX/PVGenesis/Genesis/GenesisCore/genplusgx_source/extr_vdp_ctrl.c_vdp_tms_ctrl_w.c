
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cycles; } ;


 TYPE_1__ Z80 ;
 int addr ;
 unsigned int addr_latch ;
 int code ;
 int * fifo ;
 int pending ;
 int* reg ;
 int render_bg ;
 int render_bg_inv ;
 int render_bg_m0 ;
 int render_bg_m1 ;
 int render_bg_m1x ;
 int render_bg_m2 ;
 int render_bg_m3 ;
 int render_bg_m3x ;
 int vdp_reg_w (unsigned int,unsigned int,int ) ;
 int * vram ;

void vdp_tms_ctrl_w(unsigned int data)
{
  if(pending == 0)
  {

    addr_latch = data;


    pending = 1;
  }
  else
  {

    code = (data >> 6) & 3;
    addr = (data << 8 | addr_latch) & 0x3FFF;


    pending = 0;

    if (code == 0)
    {

      fifo[0] = vram[addr & 0x3FFF];


      addr = (addr + 1) & 0x3FFF;
      return;
    }

    if (code & 2)
    {

      data &= 0x07;


      vdp_reg_w(data, addr_latch, Z80.cycles);


      if (data < 2)
      {
        int mode = (reg[0] & 0x02) | (reg[1] & 0x18);


        switch (mode)
        {
          case 0x00:
          {
            render_bg = render_bg_m0;
            break;
          }

          case 0x10:
          {
            render_bg = render_bg_m1;
            break;
          }

          case 0x02:
          {
            render_bg = render_bg_m2;
            break;
          }

          case 0x12:
          {
            render_bg = render_bg_m1x;
            break;
          }

          case 0x08:
          {
            render_bg = render_bg_m3;
            break;
          }

          case 0x18:
          {
            render_bg = render_bg_inv;
            break;
          }

          case 0x0A:
          {
            render_bg = render_bg_m3x;
            break;
          }

          case 0x1A:
          {
            render_bg = render_bg_inv;
            break;
          }
        }
      }
    }
  }
}
