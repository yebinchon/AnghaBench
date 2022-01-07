
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int abs (int) ;
 int fabs (double) ;

float df8(uint32_t A, uint32_t B,
      uint32_t pg_red_mask, uint32_t pg_green_mask, uint32_t pg_blue_mask)
{
   uint32_t r, g, b;
   uint32_t y, u, v;






   b = abs((int)(((A & pg_blue_mask )>>16) - ((B & pg_blue_mask )>> 16)));
   g = abs((int)(((A & pg_green_mask)>>8 ) - ((B & pg_green_mask )>> 8)));
   r = abs((int)(((A & pg_red_mask ) - (B & pg_red_mask ))));


   y = fabs(0.299*r + 0.587*g + 0.114*b);
   u = fabs(-0.169*r - 0.331*g + 0.500*b);
   v = fabs(0.500*r - 0.419*g - 0.081*b);

   return 48*y + 7*u + 6*v;
}
