
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enabled; } ;


 TYPE_1__ eeprom_93c ;
 unsigned char eeprom_93c_read () ;
 unsigned char** z80_readmap ;

__attribute__((used)) static unsigned char read_mapper_93c46(unsigned int address)
{
  if ((address == 0x8000) && eeprom_93c.enabled)
  {
    return eeprom_93c_read();
  }

  return z80_readmap[address >> 10][address & 0x03FF];
}
