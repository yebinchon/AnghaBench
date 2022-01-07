
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_4__ {int* pad; } ;
struct TYPE_3__ {int sram; } ;


 int INPUT_A ;
 int INPUT_B ;
 int INPUT_C ;
 int INPUT_DOWN ;
 int INPUT_LEFT ;
 int INPUT_RIGHT ;
 int INPUT_START ;
 int INPUT_UP ;
 int READ_BYTE (int ,int) ;
 TYPE_2__ input ;
 int m68k_read_bus_8 (int) ;
 TYPE_1__ sram ;

__attribute__((used)) static uint32 topshooter_r(uint32 address)
{
  if (address < 0x202000)
  {
    uint8 temp = 0xff;

    switch (address & 0xff)
    {
      case 0x43:
      {
        if (input.pad[0] & INPUT_A) temp &= ~0x80;
        if (input.pad[0] & INPUT_B) temp &= ~0x10;
        if (input.pad[0] & INPUT_START) temp &= ~0x20;
        break;
      }

      case 0x45:
      {
        if (input.pad[0] & INPUT_UP) temp &= ~0x08;
        if (input.pad[0] & INPUT_DOWN) temp &= ~0x10;
        break;
      }

      case 0x47:
      {
        if (input.pad[0] & INPUT_RIGHT) temp &= ~0x03;
        break;
      }

      case 0x49:
      {
        if (input.pad[0] & INPUT_LEFT) temp &= ~0x03;
        if (input.pad[0] & INPUT_C) temp &= ~0x01;
        break;
      }

      case 0x51:
      {
        temp = 0xA5;
        break;
      }

      default:
      {
        temp = m68k_read_bus_8(address);
        break;
      }
    }
    return temp;
  }

  return READ_BYTE(sram.sram , address & 0xffff);
}
