
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arg {TYPE_1__* color; } ;
typedef scalar_t__* png_uint_16p ;
typedef scalar_t__ png_uint_16 ;
struct TYPE_2__ {double const red; double const green; double const blue; } ;


 int alpha_calc (struct arg*,double,double) ;
 scalar_t__ round (double) ;

__attribute__((used)) static void
pixel(png_uint_16p p, struct arg *args, int nargs, double x, double y)
{



   double r=0, g=0, b=0, a=0;

   while (--nargs >= 0 && a != 1)
   {



      const double alpha = alpha_calc(args+nargs, x, y) * (1-a);

      r += alpha * args[nargs].color->red;
      g += alpha * args[nargs].color->green;
      b += alpha * args[nargs].color->blue;
      a += alpha;
   }




   if (a > 0)
   {
      if (a > 1)
      {
         if (r > 1) r = 1;
         if (g > 1) g = 1;
         if (b > 1) b = 1;
         a = 1;
      }


      p[0] = (png_uint_16) round(r * 65535);
      p[1] = (png_uint_16) round(g * 65535);
      p[2] = (png_uint_16) round(b * 65535);
      p[3] = (png_uint_16) round(a * 65535);
   }

   else
      p[3] = p[2] = p[1] = p[0] = 0;
}
