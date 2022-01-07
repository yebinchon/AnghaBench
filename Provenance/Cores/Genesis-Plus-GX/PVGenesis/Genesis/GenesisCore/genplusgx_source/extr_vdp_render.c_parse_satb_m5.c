
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_2__ {int attr; int xpos; int ypos; int size; } ;


 int im2_flag ;
 int object_count ;
 TYPE_1__* object_info ;
 int* reg ;
 int * sat ;
 size_t satb ;
 int status ;
 int * vram ;

void parse_satb_m5(int line)
{

  int ypos;


  int height;


  int size;


  int link = 0;


  int count = 0;


  int max = 16 + ((reg[12] & 1) << 2);


  int total = max << 2;


  uint16 *p = (uint16 *) &vram[satb];


  uint16 *q = (uint16 *) &sat[0];


  line += 0x81;

  do
  {

    ypos = (q[link] >> im2_flag) & 0x1FF;
    size = q[link + 1] >> 8;


    height = 8 + ((size & 3) << 3);


    ypos = line - ypos;


    if ((ypos >= 0) && (ypos < height))
    {

      if (count == max)
      {
        status |= 0x40;
        break;
      }



      object_info[count].attr = p[link + 2];
      object_info[count].xpos = p[link + 3] & 0x1ff;
      object_info[count].ypos = ypos;
      object_info[count].size = size & 0x0f;
      ++count;
    }


    link = (q[link + 1] & 0x7F) << 2;


    if (link == 0) break;
  }
  while (--total);


  object_count = count;
}
