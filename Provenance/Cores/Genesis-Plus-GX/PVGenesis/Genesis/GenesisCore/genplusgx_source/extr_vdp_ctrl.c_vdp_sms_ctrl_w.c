
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_8__ {int cycles; } ;
struct TYPE_5__ {int h; int changed; int y; } ;
struct TYPE_7__ {TYPE_1__ viewport; } ;
struct TYPE_6__ {int overscan; int gg_extra; } ;


 scalar_t__ SYSTEM_GG ;
 scalar_t__ SYSTEM_SMS ;
 TYPE_4__ Z80 ;
 int addr ;
 unsigned int addr_latch ;
 int bg_list_index ;
 TYPE_3__ bitmap ;
 int bordrr ;
 int code ;
 int color_update_m4 (int,int ) ;
 TYPE_2__ config ;
 int * cram ;
 int * fifo ;
 int parse_satb ;
 int parse_satb_m4 ;
 int parse_satb_tms ;
 int pending ;
 int* reg ;
 int render_bg ;
 int render_bg_inv ;
 int render_bg_m0 ;
 int render_bg_m1 ;
 int render_bg_m1x ;
 int render_bg_m2 ;
 int render_bg_m3 ;
 int render_bg_m3x ;
 int render_bg_m4 ;
 int render_obj ;
 int render_obj_m4 ;
 int render_obj_tms ;
 int status ;
 scalar_t__ system_hw ;
 int vc_max ;
 int ** vc_table ;
 size_t vdp_pal ;
 int vdp_reg_w (unsigned int,unsigned int,int ) ;
 int * vram ;

void vdp_sms_ctrl_w(unsigned int data)
{
  if(pending == 0)
  {

    addr = (addr & 0x3F00) | (data & 0xFF);


    addr_latch = data;


    pending = 1;
  }
  else
  {

    code = (data >> 6) & 3;
    addr = (data << 8 | addr_latch) & 0x3FFF;


    pending = 0;

    if (code == 0)
    {

      fifo[0] = vram[addr & 0x3FFF];


      addr = (addr + 1) & 0x3FFF;
      return;
    }

    if (code == 2)
    {

      int mode, prev = (reg[0] & 0x06) | (reg[1] & 0x18);


      vdp_reg_w(data & 0x0F, addr_latch, Z80.cycles);


      mode = (reg[0] & 0x06) | (reg[1] & 0x18);
      prev ^= mode;

      if (prev)
      {

        if (system_hw > SYSTEM_SMS)
        {
          int height;

          if (mode == 0x0E)
          {

            height = 240;


            vc_max = vc_table[3][vdp_pal];
          }
          else if (mode == 0x16)
          {

            height = 224;


            vc_max = vc_table[1][vdp_pal];
          }
          else
          {

            height = 192;


            vc_max = vc_table[0][vdp_pal];
          }

          if (height != bitmap.viewport.h)
          {
            if (status & 8)
            {

              bitmap.viewport.changed |= 2;
            }
            else
            {

              bitmap.viewport.h = height;


              if (config.overscan & 1)
              {
                bitmap.viewport.y = (240 + 48*vdp_pal - height) >> 1;
              }
              else
              {
                if ((system_hw == SYSTEM_GG) && !config.gg_extra)
                {

                  bitmap.viewport.y = (144 - height) / 2;
                }
                else
                {
                  bitmap.viewport.y = 0;
                }
              }
            }
          }
        }


        switch (mode)
        {
          case 0x00:
          {
            render_bg = render_bg_m0;
            break;
          }

          case 0x10:
          {
            render_bg = render_bg_m1;
           break;
          }

          case 0x02:
          {
            render_bg = render_bg_m2;
            break;
          }

          case 0x12:
          {
            render_bg = render_bg_m1x;
            break;
          }

          case 0x08:
          {
            render_bg = render_bg_m3;
            break;
          }

          case 0x18:
          {
            render_bg = render_bg_inv;
            break;
          }

          case 0x0A:
          {
            render_bg = render_bg_m3x;
            break;
          }

          case 0x1A:
          {
            render_bg = render_bg_inv;
           break;
          }

          default:
          {
            render_bg = render_bg_m4;
            break;
          }
        }


        if (prev & 0x04)
        {
          int i;

          if (mode & 0x04)
          {

            parse_satb = parse_satb_m4;
            render_obj = render_obj_m4;


            bg_list_index = 0x200;
          }
          else
          {

            parse_satb = parse_satb_tms;
            render_obj = render_obj_tms;


            bg_list_index = 0;
          }


          for(i = 0; i < 0x20; i ++)
          {
            color_update_m4(i, *(uint16 *)&cram[i << 1]);
          }
          color_update_m4(0x40, *(uint16 *)&cram[(0x10 | (bordrr & 0x0F)) << 1]);
        }
      }
    }
  }
}
