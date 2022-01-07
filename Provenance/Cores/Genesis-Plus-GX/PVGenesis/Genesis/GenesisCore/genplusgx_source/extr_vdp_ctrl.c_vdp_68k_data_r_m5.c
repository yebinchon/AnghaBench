
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_2__ {int cycles; } ;


 int M68K_REG_PC ;
 int MCYCLES_PER_LINE ;
 int addr ;
 int code ;
 int * cram ;
 int error (char*,int ,int ,int,int,int,int,int ) ;
 TYPE_1__ m68k ;
 int m68k_get_reg (int ) ;
 scalar_t__ pending ;
 scalar_t__* reg ;
 int v_counter ;
 int * vram ;
 int * vsram ;

__attribute__((used)) static unsigned int vdp_68k_data_r_m5(void)
{
  uint16 data = 0;


  pending = 0;

  switch (code & 0x0F)
  {
    case 0x00:
    {

      data = *(uint16 *)&vram[addr & 0xFFFE];




      break;
    }

    case 0x04:
    {

      data = *(uint16 *)&vsram[addr & 0x7E];




      break;
    }

    case 0x08:
    {

      data = *(uint16 *)&cram[addr & 0x7E];


      data = ((data & 0x1C0) << 3) | ((data & 0x038) << 2) | ((data & 0x007) << 1);




      break;
    }

    case 0x0c:
    {

      data = *(uint16 *)&vram[addr & 0xFFFE] & 0xff;




      break;
    }

    default:
    {




      break;
    }
  }


  addr += reg[15];


  return data;
}
