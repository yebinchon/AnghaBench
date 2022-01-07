
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int out; } ;


 unsigned int BIT_DATA ;
 TYPE_1__ spi_eeprom ;

unsigned int eeprom_spi_read(unsigned int address)
{
  return (spi_eeprom.out << BIT_DATA);
}
