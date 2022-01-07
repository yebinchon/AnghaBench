
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef size_t uint16 ;


 int* bg_name_dirty ;
 size_t* bg_name_list ;
 int* bg_pattern_cache ;
 int* bp_lut ;
 int * vram ;

void update_bg_pattern_cache_m4(int index)
{
  int i;
  uint8 x, y, c;
  uint8 *dst;
  uint16 name, bp01, bp23;
  uint32 bp;

  for(i = 0; i < index; i++)
  {

    name = bg_name_list[i];


    for(y = 0; y < 8; y++)
    {
      if(bg_name_dirty[name] & (1 << y))
      {

        dst = &bg_pattern_cache[name << 6];


        bp01 = *(uint16 *)&vram[(name << 5) | (y << 2) | (0)];
        bp23 = *(uint16 *)&vram[(name << 5) | (y << 2) | (2)];



        bp = (bp_lut[bp01] >> 2) | (bp_lut[bp23]);


        for(x = 0; x < 8; x++)
        {

          c = bp & 0x0F;




          dst[0x00000 | (y << 3) | (x)] = (c);
          dst[0x08000 | (y << 3) | (x ^ 7)] = (c);
          dst[0x10000 | ((y ^ 7) << 3) | (x)] = (c);
          dst[0x18000 | ((y ^ 7) << 3) | (x ^ 7)] = (c);


          bp = bp >> 4;
        }
      }
    }


    bg_name_dirty[name] = 0;
  }
}
