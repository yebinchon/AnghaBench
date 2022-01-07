
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cycles; int out; unsigned char opcode; int state; unsigned char clk; unsigned char buffer; unsigned char addr; int status; unsigned char cs; } ;
struct TYPE_3__ {unsigned char* sram; } ;


 int BIT_CLK ;
 int BIT_CS ;
 unsigned char BIT_DATA ;
 int BIT_HOLD ;


 int PAGE_MASK ;

 int SIZE_MASK ;
 void* STANDBY ;

 TYPE_2__ spi_eeprom ;
 TYPE_1__ sram ;

void eeprom_spi_write(unsigned char data)
{

  if (data & (1 << BIT_HOLD))
  {

    if (data & (1 << BIT_CS))
    {

      spi_eeprom.cycles = 0;
      spi_eeprom.out = 1;
      spi_eeprom.opcode = 0;
      spi_eeprom.state = 130;
    }
    else
    {

      switch (spi_eeprom.state)
      {
        case 130:
        {

          if ((data & (1 << BIT_CLK)) && !spi_eeprom.clk)
          {

            spi_eeprom.opcode |= ((data >> BIT_DATA) & 1);
            spi_eeprom.cycles++;


            if (spi_eeprom.cycles == 8)
            {

              spi_eeprom.cycles = 0;


              switch (spi_eeprom.opcode)
              {
                case 0x01:
                {

                  spi_eeprom.buffer = 0;
                  spi_eeprom.state = 128;
                  break;
                }

                case 0x02:
                {

                  spi_eeprom.addr = 0;
                  spi_eeprom.state = 131;
                  break;
                }

                case 0x03:
                {

                  spi_eeprom.addr = 0;
                  spi_eeprom.state = 131;
                  break;
                }

                case 0x04:
                {

                  spi_eeprom.status &= ~0x02;
                  spi_eeprom.state = STANDBY;
                  break;
                }

                case 0x05:
                {

                  spi_eeprom.buffer = spi_eeprom.status;
                  spi_eeprom.state = 129;
                  break;
                }

                case 0x06:
                {

                  spi_eeprom.status |= 0x02;
                  spi_eeprom.state = STANDBY;
                  break;
                }

                default:
                {

                  spi_eeprom.state = STANDBY;
                  break;
                }
              }
            }
            else
            {

              spi_eeprom.opcode = spi_eeprom.opcode << 1;
            }
          }
          break;
        }

        case 131:
        {

          if ((data & (1 << BIT_CLK)) && !spi_eeprom.clk)
          {

            spi_eeprom.addr |= ((data >> BIT_DATA) & 1);
            spi_eeprom.cycles++;


            if (spi_eeprom.cycles == 16)
            {

              spi_eeprom.cycles = 0;


              spi_eeprom.addr &= SIZE_MASK;


              if (spi_eeprom.opcode & 0x01)
              {

                spi_eeprom.buffer = sram.sram[spi_eeprom.addr];
                spi_eeprom.state = 129;
              }
              else
              {

                spi_eeprom.buffer = 0;
                spi_eeprom.state = 128;
              }
            }
            else
            {

              spi_eeprom.addr = spi_eeprom.addr << 1;
            }
          }
          break;
        }

        case 128:
        {

          if ((data & (1 << BIT_CLK)) && !spi_eeprom.clk)
          {

            spi_eeprom.buffer |= ((data >> BIT_DATA) & 1);
            spi_eeprom.cycles++;


            if (spi_eeprom.cycles == 8)
            {

              spi_eeprom.cycles = 0;


              if (spi_eeprom.opcode & 0x01)
              {

                spi_eeprom.status = (spi_eeprom.status & 0x02) | (spi_eeprom.buffer & 0x0c);


                spi_eeprom.state = STANDBY;
              }
              else
              {

                if (spi_eeprom.status & 2)
                {

                  switch ((spi_eeprom.status >> 2) & 0x03)
                  {
                    case 0x01:
                    {

                      if (spi_eeprom.addr < 0xC000)
                      {
                        sram.sram[spi_eeprom.addr] = spi_eeprom.buffer;
                      }
                      break;
                    }

                    case 0x02:
                    {

                      if (spi_eeprom.addr < 0x8000)
                      {
                        sram.sram[spi_eeprom.addr] = spi_eeprom.buffer;
                      }
                      break;
                    }

                    case 0x03:
                    {

                      break;
                    }

                    default:
                    {

                      sram.sram[spi_eeprom.addr] = spi_eeprom.buffer;
                      break;
                    }
                  }
                }


                spi_eeprom.buffer = 0;


                spi_eeprom.addr = (spi_eeprom.addr & ~PAGE_MASK) | ((spi_eeprom.addr + 1) & PAGE_MASK);
              }
            }
            else
            {

              spi_eeprom.buffer = spi_eeprom.buffer << 1;
            }
          }
          break;
        }

        case 129:
        {

          if ((data & (1 << BIT_CLK)) && !spi_eeprom.clk)
          {

            spi_eeprom.out = (spi_eeprom.buffer >> (7 - spi_eeprom.cycles)) & 1;
            spi_eeprom.cycles++;


            if (spi_eeprom.cycles == 8)
            {

              spi_eeprom.cycles = 0;


              if (spi_eeprom.opcode == 0x03)
              {

                spi_eeprom.addr = (spi_eeprom.addr + 1) & SIZE_MASK;
                spi_eeprom.buffer = sram.sram[spi_eeprom.addr];
              }
            }
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


  spi_eeprom.cs = (data >> BIT_CS) & 1;
  spi_eeprom.clk = (data >> BIT_CLK) & 1;
}
