
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* sram; } ;


 TYPE_1__ sram ;

unsigned int sram_read_word(unsigned int address)
{
  address &= 0xfffe;
  return (sram.sram[address + 1] | (sram.sram[address] << 8));
}
