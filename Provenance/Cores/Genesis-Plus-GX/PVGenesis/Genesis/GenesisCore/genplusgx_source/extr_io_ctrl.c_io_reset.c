
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bios; } ;


 int IO_CONT1_HI ;
 int IO_RESET_HI ;
 int SYSTEM_MCD ;
 int SYSTEM_MD ;
 int SYSTEM_PBC ;
 TYPE_1__ config ;
 int input_reset () ;
 int* io_reg ;
 int region_code ;
 int system_hw ;

void io_reset(void)
{

  if ((system_hw & SYSTEM_PBC) == SYSTEM_MD)
  {
    io_reg[0x00] = region_code | (config.bios & 1);
    io_reg[0x01] = 0x00;
    io_reg[0x02] = 0x00;
    io_reg[0x03] = 0x00;
    io_reg[0x04] = 0x00;
    io_reg[0x05] = 0x00;
    io_reg[0x06] = 0x00;
    io_reg[0x07] = 0xFF;
    io_reg[0x08] = 0x00;
    io_reg[0x09] = 0x00;
    io_reg[0x0A] = 0xFF;
    io_reg[0x0B] = 0x00;
    io_reg[0x0C] = 0x00;
    io_reg[0x0D] = 0xFB;
    io_reg[0x0E] = 0x00;
    io_reg[0x0F] = 0x00;


    if (system_hw != SYSTEM_MCD)
    {
      io_reg[0x00] |= 0x20;
    }
  }
  else
  {

    io_reg[0x00] = 0x80 | (region_code >> 1);
    io_reg[0x01] = 0x00;
    io_reg[0x02] = 0xFF;
    io_reg[0x03] = 0x00;
    io_reg[0x04] = 0xFF;
    io_reg[0x05] = 0x00;
    io_reg[0x06] = 0xFF;


    io_reg[0x0D] = IO_RESET_HI;


    if (system_hw != SYSTEM_PBC)
    {
      io_reg[0x0D] |= IO_CONT1_HI;
    }


    io_reg[0x0E] = 0x00;
    io_reg[0x0F] = 0xFF;
  }


  input_reset();
}
