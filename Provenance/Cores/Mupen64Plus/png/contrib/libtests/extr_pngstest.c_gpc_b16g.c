
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {double ig; double dg; } ;
struct TYPE_6__ {int a; double r; double g; double b; } ;
typedef TYPE_1__ Pixel ;
typedef TYPE_2__ Background ;


 double sRGB (double) ;

__attribute__((used)) static void
gpc_b16g(Pixel *out, const Pixel *in, const Background *back)
{
   if (in->a <= 0)
      out->r = out->g = out->b = back->ig;

   else
   {
      double a = in->a/65535.;
      double a1 = 1-a;

      a /= 65535;
      out->r = out->g = out->b = sRGB(in->g * a + back->dg * a1);
   }

   out->a = 255;
}
