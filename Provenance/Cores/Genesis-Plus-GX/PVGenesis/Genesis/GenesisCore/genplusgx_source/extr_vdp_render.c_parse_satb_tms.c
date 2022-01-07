
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint8 ;
struct TYPE_4__ {int h; } ;
struct TYPE_6__ {TYPE_1__ viewport; } ;
struct TYPE_5__ {int ypos; void* size; void* attr; void* xpos; } ;


 TYPE_3__ bitmap ;
 int object_count ;
 TYPE_2__* object_info ;
 int* reg ;
 int spr_ovr ;
 int status ;
 void** vram ;

void parse_satb_tms(int line)
{
  int i = 0;


  int count = 0;


  if (!(reg[1] & 0x10))
  {

    uint8 *st = &vram[(reg[5] << 7) & 0x3F80];


    int ypos;


    int height = 8;


    height <<= ((reg[1] & 0x02) >> 1);


    height <<= (reg[1] & 0x01);


    do
    {

      ypos = st[i << 2];


      if (ypos == 0xD0)
      {
        break;
      }


      if (ypos >= 224)
      {
        ypos -= 256;
      }


      ypos = line - ypos;


      if ((ypos >= 0) && (ypos < height))
      {

        if (count == 4)
        {

          if (line < bitmap.viewport.h)
          {
            spr_ovr = 0x40;
          }
          break;
        }


        ypos >>= (reg[1] & 0x01);


        object_info[count].ypos = ypos;
        object_info[count].xpos = st[(i << 2) + 1];
        object_info[count].attr = st[(i << 2) + 2];
        object_info[count].size = st[(i << 2) + 3];


        ++count;
      }
    }
    while (++i < 32);
  }


  object_count = count;


  status = (status & 0xE0) | (i & 0x1F);
}
