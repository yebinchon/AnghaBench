
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* fcr; } ;


 TYPE_1__ slot ;
 unsigned char** z80_readmap ;

__attribute__((used)) static unsigned char read_mapper_korea_8k(unsigned int address)
{
  unsigned char data = z80_readmap[address >> 10][address & 0x03FF];


  unsigned char page = address >> 14;


  if (((page == 1) && (slot.fcr[2] & 0x80)) || ((page == 2) && (slot.fcr[0] & 0x80)))
  {

    data = (((data >> 7) & 0x01) | ((data >> 5) & 0x02) |
            ((data >> 3) & 0x04) | ((data >> 1) & 0x08) |
            ((data << 1) & 0x10) | ((data << 3) & 0x20) |
            ((data << 5) & 0x40) | ((data << 7) & 0x80));
  }

  return data;
}
