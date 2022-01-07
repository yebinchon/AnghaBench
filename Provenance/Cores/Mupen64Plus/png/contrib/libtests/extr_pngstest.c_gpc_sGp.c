
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a; int r; int g; int b; } ;
typedef TYPE_1__ Pixel ;
typedef int Background ;


 int YfromRGBint (int,int,int) ;
 int sRGB (int) ;
 int u8d (int) ;

__attribute__((used)) static void
gpc_sGp(Pixel *out, const Pixel *in, const Background *back)
{
   (void)back;

   if (in->a <= 128)
   {
      out->r = out->g = out->b = 255;
      out->a = 0;
   }

   else
   {
      out->r = out->g = out->b = sRGB(YfromRGBint(in->r, in->g, in->b)/in->a);
      out->a = u8d(in->a / 257.);
   }
}
