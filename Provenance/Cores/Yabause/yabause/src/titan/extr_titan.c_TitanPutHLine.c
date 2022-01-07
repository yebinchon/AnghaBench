
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct PixelData {int pixel; } ;
typedef size_t s32 ;
struct TYPE_2__ {size_t vdp2width; struct PixelData** vdp2framebuffer; } ;


 TYPE_1__ tt_context ;

void TitanPutHLine(int priority, s32 x, s32 y, s32 width, u32 color)
{
   if (priority == 0) return;

   {
      struct PixelData * buffer = &tt_context.vdp2framebuffer[priority][ (y * tt_context.vdp2width) + x];
      int i;

      for (i = 0; i < width; i++)
         buffer[i].pixel = color;
   }
}
