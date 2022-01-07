
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t ig; int dg; } ;
struct TYPE_6__ {int a; size_t r; size_t g; size_t b; } ;
typedef TYPE_1__ Pixel ;
typedef TYPE_2__ Background ;


 size_t sRGB (double) ;
 double* sRGB_to_d ;

__attribute__((used)) static void
gpc_bckg(Pixel *out, const Pixel *in, const Background *back)
{
   if (in->a <= 0)
      out->r = out->g = out->b = back->ig;

   else if (in->a >= 255)
      out->r = out->g = out->b = in->g;

   else
   {
      double a = in->a / 255.;

      out->r = out->g = out->b = sRGB(sRGB_to_d[in->g] * a + back->dg * (1-a));
   }

   out->a = 255;
}
