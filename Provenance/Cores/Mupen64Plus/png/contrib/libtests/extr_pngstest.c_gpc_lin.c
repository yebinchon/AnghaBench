
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ r; scalar_t__ g; scalar_t__ b; int a; } ;
typedef TYPE_1__ Pixel ;
typedef int Background ;


 void* ilinear (scalar_t__) ;

__attribute__((used)) static void
gpc_lin(Pixel *out, const Pixel *in, const Background *back)
{
   (void)back;

   out->r = ilinear(in->r);

   if (in->g == in->r)
   {
      out->g = out->r;

      if (in->b == in->r)
         out->b = out->r;

      else
         out->b = ilinear(in->b);
   }

   else
   {
      out->g = ilinear(in->g);

      if (in->b == in->r)
         out->b = out->r;

      else if (in->b == in->g)
         out->b = out->g;

      else
         out->b = ilinear(in->b);
   }

   out->a = 65535;
}
