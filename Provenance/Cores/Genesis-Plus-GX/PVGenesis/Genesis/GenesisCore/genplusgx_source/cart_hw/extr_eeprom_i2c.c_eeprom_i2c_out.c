
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned char uint8 ;
typedef size_t uint16 ;
struct TYPE_4__ {int size_mask; unsigned char sda_out_bit; } ;
struct TYPE_6__ {unsigned char sda; int state; int cycles; int slave_mask; int word_address; TYPE_1__ config; } ;
struct TYPE_5__ {int* sram; } ;
 TYPE_3__ eeprom_i2c ;
 TYPE_2__ sram ;

__attribute__((used)) static unsigned char eeprom_i2c_out(void)
{
  uint8 sda_out = eeprom_i2c.sda;


  switch (eeprom_i2c.state)
  {
    case 129:
    {
      if (eeprom_i2c.cycles < 9)
      {

        uint16 sram_address = (eeprom_i2c.slave_mask | eeprom_i2c.word_address) & 0xffff;
        sda_out = (sram.sram[sram_address] >> (8 - eeprom_i2c.cycles)) & 1;

        if (eeprom_i2c.cycles == 8)
        {

          eeprom_i2c.word_address ++;
          eeprom_i2c.word_address &= eeprom_i2c.config.size_mask;
        }
      }
      break;
    }

    case 132:
    case 133:
    case 131:
    case 130:
    case 128:
    {
      if (eeprom_i2c.cycles == 9) sda_out = 0;
      break;
    }

    default:
    {
      break;
    }
  }

  return (sda_out << eeprom_i2c.config.sda_out_bit);
}
