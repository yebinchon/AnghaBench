
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t ir; size_t ig; size_t ib; int dr; int dg; int db; } ;
struct TYPE_6__ {int a; size_t r; size_t g; size_t b; } ;
typedef TYPE_1__ Pixel ;
typedef TYPE_2__ Background ;


 void* sRGB (double) ;
 double* sRGB_to_d ;

__attribute__((used)) static void
gpc_bckc(Pixel *out, const Pixel *in, const Background *back)
{
   if (in->a <= 0)
   {
      out->r = back->ir;
      out->g = back->ig;
      out->b = back->ib;
   }

   else if (in->a >= 255)
   {
      out->r = in->r;
      out->g = in->g;
      out->b = in->b;
   }

   else
   {
      double a = in->a / 255.;

      out->r = sRGB(sRGB_to_d[in->r] * a + back->dr * (1-a));
      out->g = sRGB(sRGB_to_d[in->g] * a + back->dg * (1-a));
      out->b = sRGB(sRGB_to_d[in->b] * a + back->db * (1-a));
   }

   out->a = 255;
}
