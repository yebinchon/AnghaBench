
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int stbiw_uint32 ;
struct TYPE_4__ {int context; int (* func ) (int ,int *,int) ;} ;
typedef TYPE_1__ stbi__write_context ;


 scalar_t__ stbi__flip_vertically_on_write ;
 int stbiw__write_pixel (TYPE_1__*,int,int,int,int,unsigned char*) ;
 int stub1 (int ,int *,int) ;

__attribute__((used)) static void stbiw__write_pixels(stbi__write_context *s, int rgb_dir, int vdir, int x, int y, int comp, void *data, int write_alpha, int scanline_pad, int expand_mono)
{
   stbiw_uint32 zero = 0;
   int i,j, j_end;

   if (y <= 0)
      return;

   if (stbi__flip_vertically_on_write)
      vdir *= -1;

   if (vdir < 0)
      j_end = -1, j = y-1;
   else
      j_end = y, j = 0;

   for (; j != j_end; j += vdir) {
      for (i=0; i < x; ++i) {
         unsigned char *d = (unsigned char *) data + (j*x+i)*comp;
         stbiw__write_pixel(s, rgb_dir, comp, write_alpha, expand_mono, d);
      }
      s->func(s->context, &zero, scanline_pad);
   }
}
