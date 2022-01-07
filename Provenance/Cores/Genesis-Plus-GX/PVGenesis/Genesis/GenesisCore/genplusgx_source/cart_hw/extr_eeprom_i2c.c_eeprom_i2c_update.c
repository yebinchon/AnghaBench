
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint16 ;
struct TYPE_4__ {int size_mask; int address_bits; int pagewrite_mask; } ;
struct TYPE_6__ {int state; int cycles; int word_address; int old_sda; int rw; int slave_mask; int sda; int scl; int old_scl; TYPE_1__ config; } ;
struct TYPE_5__ {int* sram; } ;


 int Detect_START () ;
 int Detect_STOP () ;
 TYPE_3__ eeprom_i2c ;
 TYPE_2__ sram ;

__attribute__((used)) static void eeprom_i2c_update(void)
{

  switch (eeprom_i2c.state)
  {

    case 130:
    {
      Detect_START();
      Detect_STOP();
      break;
    }


    case 129:
    {
      Detect_STOP();
      break;
    }




    case 134:
    {
      Detect_START();
      Detect_STOP();


      if (!eeprom_i2c.old_scl && eeprom_i2c.scl)
      {
        if (eeprom_i2c.cycles == 0) eeprom_i2c.cycles ++;
      }



      if (eeprom_i2c.old_scl && !eeprom_i2c.scl && (eeprom_i2c.cycles > 0))
      {
        if (eeprom_i2c.cycles < 8)
        {
          eeprom_i2c.word_address |= (eeprom_i2c.old_sda << (7 - eeprom_i2c.cycles));
        }
        else if (eeprom_i2c.cycles == 8)
        {
          eeprom_i2c.rw = eeprom_i2c.old_sda;
        }
        else
        {
          eeprom_i2c.cycles = 0;
          eeprom_i2c.word_address &= eeprom_i2c.config.size_mask;
          eeprom_i2c.state = eeprom_i2c.rw ? 131 : 128;
        }

        eeprom_i2c.cycles ++;
      }
      break;
    }





    case 135:
    {
      Detect_START();
      Detect_STOP();


      if (!eeprom_i2c.old_scl && eeprom_i2c.scl)
      {
        if (eeprom_i2c.cycles == 0) eeprom_i2c.cycles ++;
      }


      if (eeprom_i2c.old_scl && !eeprom_i2c.scl && (eeprom_i2c.cycles > 0))
      {
        if ((eeprom_i2c.cycles > 4) && (eeprom_i2c.cycles <8))
        {
          if ((eeprom_i2c.config.address_bits == 16) ||
            (eeprom_i2c.config.size_mask < (1 << (15 - eeprom_i2c.cycles))))
          {

            eeprom_i2c.slave_mask |= (eeprom_i2c.old_sda << (7 - eeprom_i2c.cycles));
          }
          else
          {

            if (eeprom_i2c.old_sda) eeprom_i2c.word_address |= (1 << (15 - eeprom_i2c.cycles));
            else eeprom_i2c.word_address &= ~(1 << (15 - eeprom_i2c.cycles));
          }
        }
        else if (eeprom_i2c.cycles == 8) eeprom_i2c.rw = eeprom_i2c.old_sda;
        else if (eeprom_i2c.cycles > 8)
        {

          eeprom_i2c.cycles = 0;
          if (eeprom_i2c.config.address_bits == 16)
          {

            eeprom_i2c.state = eeprom_i2c.rw ? 131 : 133;
            eeprom_i2c.slave_mask <<= 16;
          }
          else
          {

            eeprom_i2c.state = eeprom_i2c.rw ? 131 : 132;
            eeprom_i2c.slave_mask <<= 8;
          }
        }

        eeprom_i2c.cycles ++;
      }
      break;
    }




    case 133:
    {
      Detect_START();
      Detect_STOP();


      if (eeprom_i2c.old_scl && !eeprom_i2c.scl)
      {
        if (eeprom_i2c.cycles < 9)
        {
          if ((eeprom_i2c.config.size_mask + 1) < (1 << (17 - eeprom_i2c.cycles)))
          {

            eeprom_i2c.slave_mask >>= 1;
          }
          else
          {

            if (eeprom_i2c.old_sda) eeprom_i2c.word_address |= (1 << (16 - eeprom_i2c.cycles));
            else eeprom_i2c.word_address &= ~(1 << (16 - eeprom_i2c.cycles));
          }

          eeprom_i2c.cycles ++;
        }
        else
        {

          eeprom_i2c.cycles = 1;
          eeprom_i2c.state = 132;
        }
      }
      break;
    }




    case 132:
    {
      Detect_START();
      Detect_STOP();


      if (eeprom_i2c.old_scl && !eeprom_i2c.scl)
      {
        if (eeprom_i2c.cycles < 9)
        {
          if ((eeprom_i2c.config.size_mask + 1) < (1 << (9 - eeprom_i2c.cycles)))
          {

            eeprom_i2c.slave_mask >>= 1;
          }
          else
          {

            if (eeprom_i2c.old_sda) eeprom_i2c.word_address |= (1 << (8 - eeprom_i2c.cycles));
            else eeprom_i2c.word_address &= ~(1 << (8 - eeprom_i2c.cycles));
          }

          eeprom_i2c.cycles ++;
        }
        else
        {

          eeprom_i2c.cycles = 1;
          eeprom_i2c.word_address &= eeprom_i2c.config.size_mask;
          eeprom_i2c.state = 128;
        }
      }
      break;
    }




    case 131:
    {
      Detect_START();
      Detect_STOP();


      if (eeprom_i2c.old_scl && !eeprom_i2c.scl)
      {
        if (eeprom_i2c.cycles < 9) eeprom_i2c.cycles ++;
        else
        {
          eeprom_i2c.cycles = 1;


          if (eeprom_i2c.old_sda) eeprom_i2c.state = 129;
         }
      }
      break;
    }




    case 128:
    {
      Detect_START();
      Detect_STOP();


      if (eeprom_i2c.old_scl && !eeprom_i2c.scl)
      {
        if (eeprom_i2c.cycles < 9)
        {

          uint16 sram_address = (eeprom_i2c.slave_mask | eeprom_i2c.word_address) & 0xFFFF;
          if (eeprom_i2c.old_sda) sram.sram[sram_address] |= (1 << (8 - eeprom_i2c.cycles));
          else sram.sram[sram_address] &= ~(1 << (8 - eeprom_i2c.cycles));

          if (eeprom_i2c.cycles == 8)
          {

            eeprom_i2c.word_address = (eeprom_i2c.word_address & (0xFFFF - eeprom_i2c.config.pagewrite_mask)) |
                                     ((eeprom_i2c.word_address + 1) & eeprom_i2c.config.pagewrite_mask);
          }

          eeprom_i2c.cycles ++;
        }
        else eeprom_i2c.cycles = 1;
      }
      break;
    }
  }

  eeprom_i2c.old_scl = eeprom_i2c.scl;
  eeprom_i2c.old_sda = eeprom_i2c.sda;
}
