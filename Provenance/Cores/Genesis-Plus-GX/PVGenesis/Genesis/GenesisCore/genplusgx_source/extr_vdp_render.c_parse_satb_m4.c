
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint8 ;
typedef int uint16 ;
struct TYPE_4__ {int h; } ;
struct TYPE_6__ {TYPE_1__ viewport; } ;
struct TYPE_5__ {int ypos; void* attr; void* xpos; } ;


 scalar_t__ SYSTEM_MD ;
 scalar_t__ SYSTEM_SMS ;
 TYPE_3__ bitmap ;
 int object_count ;
 TYPE_2__* object_info ;
 int* reg ;
 int spr_ovr ;
 scalar_t__ system_hw ;
 void** vram ;

void parse_satb_m4(int line)
{
  int i = 0;
  uint8 *st;


  int count = 0;


  int ypos;


  int height = 8 + ((reg[1] & 0x02) << 2);


  uint16 st_mask = ~0x3F80 ^ (reg[5] << 7);


  if (system_hw > SYSTEM_SMS)
  {
    st_mask |= 0x80;
  }


  st = &vram[st_mask & 0x3F00];


  do
  {

    ypos = st[i];


    if (ypos == (bitmap.viewport.h + 16))
    {
      break;
    }


    if (ypos >= 240)
    {
      ypos -= 256;
    }


    ypos = line - ypos;


    if (system_hw < SYSTEM_MD)
    {
      ypos >>= (reg[1] & 0x01);
    }


    if ((ypos >= 0) && (ypos < height))
    {

      if (count == 8)
      {

        if ((line >= 0) && (line < bitmap.viewport.h))
        {
          spr_ovr = 0x40;
        }
        break;
      }


      object_info[count].ypos = ypos;
      object_info[count].xpos = st[(0x80 + (i << 1)) & st_mask];
      object_info[count].attr = st[(0x81 + (i << 1)) & st_mask];


      ++count;
    }
  }
  while (++i < 64);


  object_count = count;
}
