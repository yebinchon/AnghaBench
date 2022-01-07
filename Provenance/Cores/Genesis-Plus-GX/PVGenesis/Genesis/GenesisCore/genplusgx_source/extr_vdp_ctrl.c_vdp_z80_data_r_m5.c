
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16 ;


 unsigned int READ_BYTE (int ,int) ;
 int addr ;
 int code ;
 int * cram ;
 scalar_t__ pending ;
 scalar_t__* reg ;
 int vram ;
 int vsram ;

__attribute__((used)) static unsigned int vdp_z80_data_r_m5(void)
{
  unsigned int data = 0;


  pending = 0;

  switch (code & 0x0F)
  {
    case 0x00:
    {

      data = READ_BYTE(vram, addr ^ 1);
      break;
    }

    case 0x04:
    {

      data = READ_BYTE(vsram, (addr & 0x7F) ^ 1);
      break;
    }

    case 0x08:
    {

      data = *(uint16 *)&cram[addr & 0x7E];


      data = ((data & 0x1C0) << 3) | ((data & 0x038) << 2) | ((data & 0x007) << 1);


      if (addr & 1)
      {
        data = data >> 8;
      }

      data &= 0xFF;
      break;
    }
  }


  addr += reg[15];


  return data;
}
