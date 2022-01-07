
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bluey; int bluex; int greeny; int greenx; int redy; int redx; int whitey; int whitex; } ;
typedef TYPE_1__ png_xy ;


 scalar_t__ PNG_OUT_OF_RANGE (int ,int ,int) ;

__attribute__((used)) static int
png_colorspace_endpoints_match(const png_xy *xy1, const png_xy *xy2, int delta)
{

   if (PNG_OUT_OF_RANGE(xy1->whitex, xy2->whitex,delta) ||
       PNG_OUT_OF_RANGE(xy1->whitey, xy2->whitey,delta) ||
       PNG_OUT_OF_RANGE(xy1->redx, xy2->redx, delta) ||
       PNG_OUT_OF_RANGE(xy1->redy, xy2->redy, delta) ||
       PNG_OUT_OF_RANGE(xy1->greenx, xy2->greenx,delta) ||
       PNG_OUT_OF_RANGE(xy1->greeny, xy2->greeny,delta) ||
       PNG_OUT_OF_RANGE(xy1->bluex, xy2->bluex, delta) ||
       PNG_OUT_OF_RANGE(xy1->bluey, xy2->bluey, delta))
      return 0;
   return 1;
}
