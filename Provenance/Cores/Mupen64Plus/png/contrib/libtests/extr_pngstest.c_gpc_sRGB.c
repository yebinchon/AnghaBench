
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ r; scalar_t__ g; scalar_t__ b; int a; } ;
typedef TYPE_1__ Pixel ;
typedef int Background ;


 void* isRGB (scalar_t__) ;

__attribute__((used)) static void
gpc_sRGB(Pixel *out, const Pixel *in, const Background *back)
{
   (void)back;

   out->r = isRGB(in->r);

   if (in->g == in->r)
   {
      out->g = out->r;

      if (in->b == in->r)
         out->b = out->r;

      else
         out->b = isRGB(in->b);
   }

   else
   {
      out->g = isRGB(in->g);

      if (in->b == in->r)
         out->b = out->r;

      else if (in->b == in->g)
         out->b = out->g;

      else
         out->b = isRGB(in->b);
   }

   out->a = 255;
}
