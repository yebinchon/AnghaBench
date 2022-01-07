
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a; int b; int g; int r; } ;
typedef TYPE_1__ Pixel ;
typedef int Background ;



__attribute__((used)) static void
gpc_A(Pixel *out, const Pixel *in, const Background *back)
{
   (void)back;
   out->r = in->r;
   out->g = in->g;
   out->b = in->b;
   out->a = 65535;
}
