
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16 ;


 int MARK_BG_DIRTY (int) ;
 int addr ;
 int bordrr ;
 int code ;
 int color_update_m4 (int,unsigned int) ;
 int * cram ;
 scalar_t__ pending ;
 scalar_t__* reg ;
 unsigned int* vram ;

__attribute__((used)) static void vdp_z80_data_w_m4(unsigned int data)
{

  pending = 0;


  if (code & 0x02)
  {

    int index = addr & 0x1F;


    uint16 *p = (uint16 *)&cram[index << 1];


    if (data != *p)
    {

      *p = data;


      color_update_m4(index, data);


      if (index == (0x10 | (bordrr & 0x0F)))
      {
        color_update_m4(0x40, data);
      }
    }
  }
  else
  {

    int index = addr & 0x3FFF;


    if (data != vram[index])
    {
      int name;


      vram[index] = data;


      MARK_BG_DIRTY(index);
    }
  }


  addr += (reg[15] + 1);
}
