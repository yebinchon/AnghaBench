
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char enabled; } ;


 TYPE_1__ eeprom_93c ;
 int eeprom_93c_init () ;
 int eeprom_93c_write (unsigned char) ;
 int mapper_16k_w (unsigned int,unsigned char) ;
 unsigned char** z80_writemap ;

__attribute__((used)) static void write_mapper_93c46(unsigned int address, unsigned char data)
{

  if ((address == 0x8000) && eeprom_93c.enabled)
  {
    eeprom_93c_write(data);
    return;
  }


  if (address == 0xFFFC)
  {

    eeprom_93c.enabled = data & 0x08;

    if (data & 0x80)
    {

      eeprom_93c_init();
    }
  }


  if (address > 0xFFFC)
  {
    mapper_16k_w(address & 3, data);
  }

  z80_writemap[address >> 10][address & 0x03FF] = data;
}
