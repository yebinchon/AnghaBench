
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int h; } ;
struct TYPE_8__ {TYPE_1__ viewport; } ;
struct TYPE_7__ {int** analog; int y_offset; scalar_t__* system; int x_offset; } ;
struct TYPE_6__ {int Port; } ;


 scalar_t__ SYSTEM_MCD ;
 scalar_t__ SYSTEM_MENACER ;
 TYPE_4__ bitmap ;
 int* hc_256 ;
 int* hc_320 ;
 int hvc_latch ;
 TYPE_3__ input ;
 int* io_reg ;
 TYPE_2__ lightgun ;
 int m68k_update_irq (int) ;
 int* reg ;
 scalar_t__ system_hw ;
 int v_counter ;

void lightgun_refresh(int port)
{

  if (port == lightgun.Port)
  {

    int y = input.analog[port][1] + input.y_offset;


    if ((y == v_counter) && (y < bitmap.viewport.h))
    {

      if (io_reg[5] & 0x80)
      {

        int x = input.analog[port][0];


        if (input.system[1] == SYSTEM_MENACER)
        {

          if (system_hw == SYSTEM_MCD)
          {
            x = (x * 304) / 320;
          }
          else
          {
            x = (x * 289) / 320;
          }
        }


        if (reg[11] & 0x08)
        {
          m68k_update_irq(2);
        }


        if (reg[0] & 0x02)
        {

          hvc_latch = 0x10000 | (y << 8);
        }
        else
        {

          hvc_latch = 0x20000 | (y << 8);
        }


        if (reg[12] & 1)
        {
          hvc_latch |= hc_320[((x / 2) + input.x_offset) % 210];
        }
        else
        {
          hvc_latch |= hc_256[((x / 2) + input.x_offset) % 171];
        }
      }
    }
    else if (hvc_latch & 0x20000)
    {

      hvc_latch = 0;
    }
  }
}
