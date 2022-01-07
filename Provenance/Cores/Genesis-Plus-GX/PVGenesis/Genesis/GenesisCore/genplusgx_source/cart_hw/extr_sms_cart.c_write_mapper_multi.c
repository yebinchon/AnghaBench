
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* fcr; } ;


 int mapper_16k_w (int,int) ;
 TYPE_1__ slot ;
 unsigned char** z80_writemap ;

__attribute__((used)) static void write_mapper_multi(unsigned int address, unsigned char data)
{
  if (address == 0x3FFE)
  {
    mapper_16k_w(1,data);
    return;
  }

  if (address == 0x7FFF)
  {
    mapper_16k_w(2,data);
    return;
  }

  if (address == 0xBFFF)
  {
    mapper_16k_w(3,(slot.fcr[1] & 0x30) + data);
    return;
  }

  z80_writemap[address >> 10][address & 0x03FF] = data;
}
