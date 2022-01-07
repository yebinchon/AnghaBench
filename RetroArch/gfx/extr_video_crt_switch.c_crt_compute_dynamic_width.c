
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int p_clock ;
 int ra_core_hz ;

int crt_compute_dynamic_width(int width)
{
   unsigned i;
   int dynamic_width = 0;
   unsigned min_height = 261;




   p_clock = 21000000;


   for (i = 0; i < 10; i++)
   {
      dynamic_width = width*i;
      if ((dynamic_width * min_height * ra_core_hz) > p_clock)
         break;

   }
   return dynamic_width;
}
