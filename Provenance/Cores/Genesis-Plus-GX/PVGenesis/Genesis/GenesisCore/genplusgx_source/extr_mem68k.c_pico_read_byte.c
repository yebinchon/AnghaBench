
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* pad; int** analog; } ;


 TYPE_1__ input ;
 unsigned int m68k_read_bus_8 (unsigned int) ;
 int pico_current ;
 int region_code ;

unsigned int pico_read_byte(unsigned int address)
{
  switch (address & 0xFF)
  {
    case 0x01:
    {
      return (region_code >> 1);
    }

    case 0x03:
    {
      return ~input.pad[0];
    }

    case 0x05:
    {
      return (input.analog[0][0] >> 8);
    }

    case 0x07:
    {
      return (input.analog[0][0] & 0xFF);
    }

    case 0x09:
    {
      return (input.analog[0][1] >> 8);
    }

    case 0x0B:
    {
      return (input.analog[0][1] & 0xFF);
    }

    case 0x0D:
    {
      return (1 << pico_current) - 1;
    }

    case 0x10:
    case 0x11:
    {
      return 0xff;
    }

    case 0x12:
    {
      return 0x80;
    }

    default:
    {
      return m68k_read_bus_8(address);
    }
  }
}
