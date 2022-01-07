
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* sprite_window_mask ;
 int vdp2width ;

int TestSpriteWindow(int wctl, int x, int y)
{
   int mask;
   int addr = (y*vdp2width) + x;

   if (addr >= (704 * 512))
      return 0;

   mask = sprite_window_mask[addr];

   if (wctl & 0x20)
   {
      if (wctl & 0x10)
      {
         if (mask == 0)
            return 0;
      }
      else
      {
         if (mask)
            return 0;
      }

      return 1;
   }
   return 3;
}
