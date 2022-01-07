
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_16 ;


 int exit (int) ;
 int finvsRGB (unsigned int) ;
 int fprintf (int ,char*,unsigned int,unsigned int) ;
 unsigned int nearbyint (int ) ;
 int stderr ;

png_uint_16
invsRGB(unsigned int i)
{
   unsigned int x = nearbyint(finvsRGB(i));

   if (x > 65535)
   {
      fprintf(stderr, "invsRGB(%u) overflows to %u\n", i, x);
      exit(1);
   }

   return (png_uint_16)x;
}
