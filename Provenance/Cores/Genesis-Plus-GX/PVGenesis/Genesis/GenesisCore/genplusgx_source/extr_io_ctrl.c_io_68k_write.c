
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* data_w ) (unsigned int,unsigned int) ;} ;


 unsigned int* io_reg ;
 TYPE_1__* port ;
 int stub1 (unsigned int,unsigned int) ;
 int stub2 (unsigned int,unsigned int) ;

void io_68k_write(unsigned int offset, unsigned int data)
{
  switch (offset)
  {
    case 0x01:
    case 0x02:
    case 0x03:
    {
      io_reg[offset] = data;
      port[offset-1].data_w(data, io_reg[offset + 3]);
      return;
    }

    case 0x04:
    case 0x05:
    case 0x06:
    {
      if (data != io_reg[offset])
      {
        io_reg[offset] = data;
        port[offset-4].data_w(io_reg[offset-3], data);
      }
      return;
    }

    case 0x07:
    case 0x0A:
    case 0x0D:
    {
      io_reg[offset] = data;
      return;
    }

    case 0x09:
    case 0x0C:
    case 0x0F:
    {
      io_reg[offset] = data & 0xF8;
      return;
    }

    default:
    {
      return;
    }
  }
}
