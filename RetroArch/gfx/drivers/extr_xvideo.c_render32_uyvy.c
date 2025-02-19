
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int width; int * vtable; int * utable; int * ytable; TYPE_1__* image; } ;
typedef TYPE_2__ xv_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ data; } ;



__attribute__((used)) static void render32_uyvy(xv_t *xv, const void *input_,
      unsigned width, unsigned height, unsigned pitch)
{
   unsigned x, y;
   const uint32_t *input = (const uint32_t*)input_;
   uint16_t *output = (uint16_t*)xv->image->data;

   for (y = 0; y < height; y++)
   {
      for (x = 0; x < width; x++)
      {
         uint8_t y0, u, v;
         unsigned img_width;
         uint32_t p = *input++;
         p = ((p >> 8) & 0xf800)
            | ((p >> 5) & 0x07e0) | ((p >> 3) & 0x1f);

         y0 = xv->ytable[p];
         u = xv->utable[p];
         v = xv->vtable[p];

         img_width = xv->width << 1;
         output[0] = output[img_width] = u;
         output[1] = output[img_width + 1] = y0;
         output[2] = output[img_width + 2] = v;
         output[3] = output[img_width + 3] = y0;
         output += 4;
      }

      input += (pitch >> 2) - width;
      output += (xv->width - width) << 2;
   }
}
