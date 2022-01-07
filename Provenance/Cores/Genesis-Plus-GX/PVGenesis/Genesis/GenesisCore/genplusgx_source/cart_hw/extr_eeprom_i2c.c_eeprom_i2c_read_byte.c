
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int rom; } ;
struct TYPE_4__ {unsigned int sda_out_adr; } ;
struct TYPE_5__ {TYPE_1__ config; } ;


 unsigned int READ_BYTE (int ,unsigned int) ;
 TYPE_3__ cart ;
 TYPE_2__ eeprom_i2c ;
 unsigned int eeprom_i2c_out () ;

__attribute__((used)) static unsigned int eeprom_i2c_read_byte(unsigned int address)
{
  if (address == eeprom_i2c.config.sda_out_adr)
  {
    return eeprom_i2c_out();
  }

  return READ_BYTE(cart.rom, address);
}
