
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int width; int * vtable; int * utable; int * ytable; TYPE_1__* image; } ;
typedef TYPE_2__ xv_t ;
typedef int uint8_t ;
typedef size_t uint16_t ;
struct TYPE_4__ {scalar_t__ data; } ;



__attribute__((used)) static void render16_uyvy(xv_t *xv, const void *input_,
      unsigned width, unsigned height, unsigned pitch)
{
   unsigned x, y;
   const uint16_t *input = (const uint16_t*)input_;
   uint8_t *output = (uint8_t*)xv->image->data;

   for (y = 0; y < height; y++)
   {
      for (x = 0; x < width; x++)
      {
         uint16_t p = *input++;
         uint8_t y0 = xv->ytable[p];
         uint8_t u = xv->utable[p];
         uint8_t v = xv->vtable[p];
         unsigned img_width = xv->width << 1;

         output[0] = output[img_width] = u;
         output[1] = output[img_width + 1] = y0;
         output[2] = output[img_width + 2] = v;
         output[3] = output[img_width + 3] = y0;
         output += 4;
      }

      input += (pitch >> 1) - width;
      output += (xv->width - width) << 2;
   }
}
