
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cycles; } ;


 int dma_length ;
 int dma_type ;
 int dmafill ;
 int fifo_lastwrite ;
 scalar_t__ fifo_latency ;
 int fifo_write_cnt ;
 TYPE_1__ m68k ;
 scalar_t__ pending ;
 int* reg ;
 int status ;
 int vdp_bus_w (unsigned int) ;
 int vdp_dma_update (int ) ;
 int vdp_fifo_update (int ) ;

__attribute__((used)) static void vdp_68k_data_w_m5(unsigned int data)
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


  vdp_bus_w(data);


  if (dmafill & 0x100)
  {

    dmafill = data >> 8;


    dma_length = (reg[20] << 8) | reg[19];


    if (!dma_length)
    {
      dma_length = 0x10000;
    }


    dma_type = 2;
    vdp_dma_update(m68k.cycles);
  }
}
