
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int uint16 ;
struct TYPE_4__ {int h; } ;
struct TYPE_6__ {TYPE_1__ viewport; } ;
struct TYPE_5__ {int cycles; } ;


 int M68K_REG_PC ;
 int MARK_BG_DIRTY (int) ;
 int MCYCLES_PER_LINE ;
 int addr ;
 TYPE_3__ bitmap ;
 int bordrr ;
 int code ;
 int color_update_m5 (int,unsigned int) ;
 int * cram ;
 int error (char*,int ,int ,int,int,int,int,unsigned int,...) ;
 TYPE_2__ m68k ;
 int m68k_get_reg (int ) ;
 int mcycles_vdp ;
 int* reg ;
 int remap_line (int ) ;
 int render_line (int ) ;
 int * sat ;
 int sat_addr_mask ;
 int sat_base_mask ;
 int satb ;
 int v_counter ;
 int * vram ;
 int * vsram ;

__attribute__((used)) static void vdp_bus_w(unsigned int data)
{

  switch (code & 0x0F)
  {
    case 0x01:
    {

      int index = addr & 0xFFFE;


      uint16 *p = (uint16 *)&vram[index];


      if (addr & 1)
      {
        data = ((data >> 8) | (data << 8)) & 0xFFFF;
      }


      if ((index & sat_base_mask) == satb)
      {

        *(uint16 *) &sat[index & sat_addr_mask] = data;
      }


      if (data != *p)
      {
        int name;


        *p = data;


        MARK_BG_DIRTY (index);
      }




      break;
    }

    case 0x03:
    {

      uint16 *p = (uint16 *)&cram[addr & 0x7E];


      data = ((data & 0xE00) >> 3) | ((data & 0x0E0) >> 2) | ((data & 0x00E) >> 1);


      if (data != *p)
      {

        int index = (addr >> 1) & 0x3F;


        *p = data;


        if (index & 0x0F)
        {

          color_update_m5(index, data);
        }


        if (index == bordrr)
        {
          color_update_m5(0x00, data);
        }


        if ((v_counter < bitmap.viewport.h) && (reg[1]& 0x40) && (m68k.cycles <= (mcycles_vdp + 860)))
        {

          remap_line(v_counter);
        }
      }



      break;
    }

    case 0x05:
    {
      *(uint16 *)&vsram[addr & 0x7E] = data;


      if (reg[11] & 0x04)
      {

        if ((v_counter < bitmap.viewport.h) && (reg[1]& 0x40) && (m68k.cycles <= (mcycles_vdp + 860)))
        {

          render_line(v_counter);
        }
      }



      break;
    }

    default:
    {



      break;
    }
  }


  addr += reg[15];
}
