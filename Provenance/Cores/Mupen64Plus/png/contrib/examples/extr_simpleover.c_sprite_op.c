
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sprite {unsigned int height; unsigned int width; scalar_t__* buffer; } ;
typedef scalar_t__ png_uint_32 ;
typedef scalar_t__ png_uint_16 ;
typedef TYPE_1__* png_imagep ;
struct TYPE_3__ {unsigned int height; unsigned int width; } ;


 int compose (int) ;

__attribute__((used)) static void
sprite_op(const struct sprite *sprite, int x_offset, int y_offset,
   png_imagep image, const png_uint_16 *buffer)
{
   if ((y_offset < 0 || (unsigned) y_offset < sprite->height) &&
       (x_offset < 0 || (unsigned) x_offset < sprite->width))
   {
      unsigned int y = 0;

      if (y_offset < 0)
         y = -y_offset;

      do
      {
         unsigned int x = 0;

         if (x_offset < 0)
            x = -x_offset;

         do
         {

            const png_uint_16 *in_pixel = buffer + (y * image->width + x)*4;
            png_uint_32 in_alpha = in_pixel[3];




            if (in_alpha > 0)
            {
               png_uint_16 *out_pixel = sprite->buffer +
                  ((y+y_offset) * sprite->width + (x+x_offset))*4;


               in_alpha = 65535-in_alpha;

               if (in_alpha > 0)
               {
                  png_uint_32 tmp;







                  tmp = out_pixel[0] * in_alpha; tmp = (tmp + (tmp >> 16) + 32769) >> 16; out_pixel[0] = tmp + in_pixel[0];
                  tmp = out_pixel[1] * in_alpha; tmp = (tmp + (tmp >> 16) + 32769) >> 16; out_pixel[1] = tmp + in_pixel[1];
                  tmp = out_pixel[2] * in_alpha; tmp = (tmp + (tmp >> 16) + 32769) >> 16; out_pixel[2] = tmp + in_pixel[2];
                  tmp = out_pixel[3] * in_alpha; tmp = (tmp + (tmp >> 16) + 32769) >> 16; out_pixel[3] = tmp + in_pixel[3];
               }

               else
                  out_pixel[0] = in_pixel[0],
                  out_pixel[1] = in_pixel[1],
                  out_pixel[2] = in_pixel[2],
                  out_pixel[3] = in_pixel[3];
            }
         }
         while (++x < image->width);
      }
      while (++y < image->height);
   }
}
