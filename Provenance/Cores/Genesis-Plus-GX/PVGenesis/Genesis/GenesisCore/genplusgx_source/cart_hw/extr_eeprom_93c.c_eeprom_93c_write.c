
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint16 ;
struct TYPE_4__ {unsigned char clk; int state; unsigned char opcode; int cycles; unsigned char buffer; int data; int we; int cs; } ;
struct TYPE_3__ {int sram; } ;


 int BIT_CLK ;
 int BIT_CS ;
 int BIT_DATA ;


 void* WAIT_STANDBY ;


 TYPE_2__ eeprom_93c ;
 int memset (int ,int,int) ;
 TYPE_1__ sram ;

void eeprom_93c_write(unsigned char data)
{

  if (data & (1 << BIT_CS))
  {

    if ((data & (1 << BIT_CLK)) && !eeprom_93c.clk)
    {

      switch (eeprom_93c.state)
      {
        case 129:
        {

          if (data & (1 << BIT_DATA))
          {
            eeprom_93c.opcode = 0;
            eeprom_93c.cycles = 0;
            eeprom_93c.state = 131;
          }
          break;
        }

        case 131:
        {

          eeprom_93c.opcode |= ((data >> BIT_DATA) & 1) << (7 - eeprom_93c.cycles);
          eeprom_93c.cycles++;

          if (eeprom_93c.cycles == 8)
          {

            switch ((eeprom_93c.opcode >> 6) & 3)
            {
              case 1:
              {

                eeprom_93c.buffer = 0;
                eeprom_93c.cycles = 0;
                eeprom_93c.state = 128;
                break;
              }

              case 2:
              {

                eeprom_93c.buffer = *(uint16 *)(sram.sram + ((eeprom_93c.opcode & 0x3F) << 1));
                eeprom_93c.cycles = 0;
                eeprom_93c.state = 130;


                eeprom_93c.data = 0;
                break;
              }

              case 3:
              {

                if (eeprom_93c.we)
                {
                  *(uint16 *)(sram.sram + ((eeprom_93c.opcode & 0x3F) << 1)) = 0xFFFF;
                }


                eeprom_93c.state = WAIT_STANDBY;
                break;
              }

              default:
              {

                switch ((eeprom_93c.opcode >> 4) & 3)
                {
                  case 1:
                  {

                    eeprom_93c.buffer = 0;
                    eeprom_93c.cycles = 0;
                    eeprom_93c.state = 128;
                    break;
                  }

                  case 2:
                  {

                    if (eeprom_93c.we)
                    {
                      memset(sram.sram, 0xFF, 128);
                    }


                    eeprom_93c.state = WAIT_STANDBY;
                    break;
                  }

                  default:
                  {

                    eeprom_93c.we = (eeprom_93c.opcode >> 4) & 1;


                    eeprom_93c.state = WAIT_STANDBY;
                    break;
                  }
                }
                break;
              }
            }
          }
          break;
        }

        case 128:
        {

          eeprom_93c.buffer |= ((data >> BIT_DATA) & 1) << (15 - eeprom_93c.cycles);
          eeprom_93c.cycles++;

          if (eeprom_93c.cycles == 16)
          {

            if (eeprom_93c.we)
            {
              if (eeprom_93c.opcode & 0x40)
              {

                *(uint16 *)(sram.sram + ((eeprom_93c.opcode & 0x3F) << 1)) = eeprom_93c.buffer;
              }
              else
              {

                int i;
                for (i=0; i<64; i++)
                {
                  *(uint16 *)(sram.sram + (i << 1)) = eeprom_93c.buffer;

                }
              }
            }


            eeprom_93c.state = WAIT_STANDBY;
          }
          break;
        }

        case 130:
        {

          eeprom_93c.data = ((eeprom_93c.buffer >> (15 - eeprom_93c.cycles)) & 1);
          eeprom_93c.cycles++;

          if (eeprom_93c.cycles == 16)
          {

            eeprom_93c.opcode++;
            eeprom_93c.cycles = 0;
            eeprom_93c.buffer = *(uint16 *)(sram.sram + ((eeprom_93c.opcode & 0x3F) << 1));
          }
          break;
        }

        default:
        {

          break;
        }
      }
    }
  }
  else
  {

    if (eeprom_93c.cs)
    {

      eeprom_93c.data = 1;
      eeprom_93c.state = 129;
    }
  }


  eeprom_93c.cs = (data >> BIT_CS) & 1;
  eeprom_93c.clk = (data >> BIT_CLK) & 1;
}
