
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_2__ {int* sram; } ;


 TYPE_1__ sram ;

__attribute__((used)) static uint32 mapper_smw_64_r(uint32 address)
{

  switch ((address >> 16) & 0x03)
  {
    case 0x02:
    {
      switch ((address >> 1) & 7)
      {
        case 0x00: return sram.sram[0x06];
        case 0x01: return sram.sram[0x06] + 1;
        case 0x02: return sram.sram[0x07];
        case 0x03: return sram.sram[0x07] + 1;
        case 0x04: return sram.sram[0x08];
        case 0x05: return sram.sram[0x08] + 1;
        case 0x06: return sram.sram[0x08] + 2;
        case 0x07: return sram.sram[0x08] + 3;
      }
    }

    case 0x03:
    {
      uint8 data = (sram.sram[0x02] & 0x80) ? ((sram.sram[0x05] & 0x40) ? (sram.sram[0x03] & sram.sram[0x04]) : (sram.sram[0x03] ^ 0xFF)) : 0x00;

      if (address & 2)
      {

        data &= 0x7f;
      }
      else
      {

        if (sram.sram[0x05] & 0x80)
        {
          if (sram.sram[0x05] & 0x20)
          {

            sram.sram[0x08] = (sram.sram[0x04] << 2) & 0xFC;
          }
          else
          {

            sram.sram[0x06] = (sram.sram[0x01] ^ (sram.sram[0x03] << 1)) & 0xFE;
          }
        }
      }

      return data;
    }

    default:
    {
      return 0x00;
    }
  }
}
