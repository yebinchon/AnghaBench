
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PixelData {int dummy; } ;
struct TYPE_2__ {int vdp2height; int vdp2width; int * vdp2framebuffer; } ;


 int memset (int ,int ,int) ;
 TYPE_1__ tt_context ;
 scalar_t__ vdp2_interlace ;

void TitanErase()
{
   int i = 0;

   int height = tt_context.vdp2height;

   if (vdp2_interlace)
      height /= 2;

   for (i = 0; i < 6; i++)
      memset(tt_context.vdp2framebuffer[i], 0, sizeof(struct PixelData) * tt_context.vdp2width * height);
}
