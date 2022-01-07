
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint16 ;
struct TYPE_2__ {int cycles; } ;


 int MARK_BG_DIRTY (int) ;
 int addr ;
 int bordrr ;
 int code ;
 int color_update_m4 (int,unsigned int) ;
 int * cram ;
 int fifo_lastwrite ;
 scalar_t__ fifo_latency ;
 int fifo_write_cnt ;
 TYPE_1__ m68k ;
 scalar_t__ pending ;
 int* reg ;
 int status ;
 int vdp_fifo_update (int ) ;
 int * vram ;

__attribute__((used)) static void vdp_68k_data_w_m4(unsigned int data)
{

  pending = 0;


  if (!(status & 8) && (reg[1] & 0x40))
  {

    vdp_fifo_update(m68k.cycles);


    status &= 0xFDFF;


    if (fifo_write_cnt < 4)
    {

      fifo_write_cnt++;


      status |= ((fifo_write_cnt & 4) << 6);
    }
    else
    {

      fifo_lastwrite += fifo_latency;
      m68k.cycles = fifo_lastwrite;
    }
  }


  if (code & 0x02)
  {

    int index = addr & 0x1F;


    uint16 *p = (uint16 *)&cram[index << 1];


    data = ((data & 0xE00) >> 3) | (data & 0x3F);


    if (data != *p)
    {

      *p = data;


      color_update_m4(index, data);


      if (index == (0x10 | (bordrr & 0x0F)))
      {
        color_update_m4(0x40, data);
      }
    }
  }
  else
  {

    int index = ((addr << 1) & 0x3FC) | ((addr & 0x200) >> 8) | (addr & 0x3C00);


    uint16 *p = (uint16 *)&vram[index];


    if (addr & 1)
    {
      data = ((data >> 8) | (data << 8)) & 0xFFFF;
    }


    if (data != *p)
    {
      int name;


      *p = data;


      MARK_BG_DIRTY (index);
    }
  }


  addr += (reg[15] + 1);
}
