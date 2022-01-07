
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* data_r ) () ;} ;


 unsigned int IO_RESET_HI ;
 unsigned int* io_reg ;
 TYPE_1__* port ;
 int stub1 () ;
 int stub2 () ;

unsigned int io_z80_read(unsigned int offset)
{

  unsigned int data = (port[0].data_r()) | (port[1].data_r() << 8);


  unsigned int ctrl = io_reg[0x0F];


  if (offset)
  {
    data = ((data >> 10) & 0x0F) | (data & 0x40) | ((data >> 7) & 0x80) | io_reg[0x0D];


    io_reg[0x0D] |= IO_RESET_HI;


    if (!(ctrl & 0x08))
    {
      data &= ~0x80;
      data |= (ctrl & 0x80);
    }


    if (!(ctrl & 0x02))
    {
      data &= ~0x40;
      data |= ((ctrl & 0x20) << 1);
    }


    if (!(ctrl & 0x04))
    {
      data &= ~0x08;
      data |= ((ctrl & 0x40) >> 3);
    }
  }
  else
  {
    data = (data & 0x3F) | ((data >> 2) & 0xC0);


    if (!(ctrl & 0x01))
    {
      data &= ~0x20;
      data |= ((ctrl & 0x10) << 1);
    }
  }

  return data;
}
