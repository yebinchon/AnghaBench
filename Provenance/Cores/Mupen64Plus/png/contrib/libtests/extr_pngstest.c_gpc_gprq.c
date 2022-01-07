
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t r; size_t g; size_t b; int a; } ;
typedef TYPE_1__ Pixel ;
typedef int Background ;


 int YfromRGB (int ,int ,int ) ;
 size_t ilineara (size_t,int) ;
 int * sRGB_to_d ;
 size_t u16d (int) ;

__attribute__((used)) static void
gpc_gprq(Pixel *out, const Pixel *in, const Background *back)
{
   (void)back;

   if (in->r == in->g && in->g == in->b)
      out->r = out->g = out->b = ilineara(in->g, in->a);

   else
      out->r = out->g = out->b = u16d(in->a * 257 *
         YfromRGB(sRGB_to_d[in->r], sRGB_to_d[in->g], sRGB_to_d[in->b]));

   out->a = 65535;
}
