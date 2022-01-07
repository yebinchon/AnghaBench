
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* sram; } ;


 TYPE_1__ sram ;

void sram_write_word(unsigned int address, unsigned int data)
{
  address &= 0xfffe;
  sram.sram[address] = data >> 8;
  sram.sram[address + 1] = data & 0xff;
}
