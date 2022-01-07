
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* pad; } ;


 unsigned int INPUT_START ;
 TYPE_1__ input ;
 unsigned int* io_reg ;

unsigned int io_gg_read(unsigned int offset)
{
  switch (offset)
  {
    case 0:
      return (io_reg[0] & ~(input.pad[0] & INPUT_START));

    case 1:
      return ((io_reg[1] & ~(io_reg[2] & 0x7F)) | (io_reg[2] & 0x7F));

    case 2:
      return io_reg[2];

    case 3:
      return io_reg[3];

    case 4:
      return io_reg[4];

    case 5:
      return io_reg[5];

    default:
      return 0xFF;
  }
}
