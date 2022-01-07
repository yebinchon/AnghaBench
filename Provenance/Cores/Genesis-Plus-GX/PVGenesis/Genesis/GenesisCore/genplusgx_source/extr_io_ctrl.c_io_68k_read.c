
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int (* data_r ) () ;} ;


 int* io_reg ;
 TYPE_1__* port ;
 unsigned int stub1 () ;

unsigned int io_68k_read(unsigned int offset)
{
  switch(offset)
  {
    case 0x01:
    case 0x02:
    case 0x03:
    {
      unsigned int mask = 0x80 | io_reg[offset + 3];
      unsigned int data = port[offset-1].data_r();
      return (io_reg[offset] & mask) | (data & ~mask);
    }

    default:
    {
      return io_reg[offset];
    }
  }
}
