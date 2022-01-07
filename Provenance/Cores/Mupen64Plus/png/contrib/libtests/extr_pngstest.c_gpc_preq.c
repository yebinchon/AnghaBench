
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ r; int a; scalar_t__ g; scalar_t__ b; } ;
typedef TYPE_1__ Pixel ;
typedef int Background ;


 void* ilineara (scalar_t__,int) ;

__attribute__((used)) static void
gpc_preq(Pixel *out, const Pixel *in, const Background *back)
{
   (void)back;

   out->r = ilineara(in->r, in->a);

   if (in->g == in->r)
   {
      out->g = out->r;

      if (in->b == in->r)
         out->b = out->r;

      else
         out->b = ilineara(in->b, in->a);
   }

   else
   {
      out->g = ilineara(in->g, in->a);

      if (in->b == in->r)
         out->b = out->r;

      else if (in->b == in->g)
         out->b = out->g;

      else
         out->b = ilineara(in->b, in->a);
   }

   out->a = 65535;
}
