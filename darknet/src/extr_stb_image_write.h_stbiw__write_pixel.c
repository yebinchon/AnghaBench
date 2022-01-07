
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int context; int (* func ) (int ,unsigned char*,int) ;} ;
typedef TYPE_1__ stbi__write_context ;


 int stbiw__write3 (TYPE_1__*,unsigned char,unsigned char,unsigned char) ;
 int stub1 (int ,unsigned char*,int) ;
 int stub2 (int ,unsigned char*,int) ;
 int stub3 (int ,unsigned char*,int) ;

__attribute__((used)) static void stbiw__write_pixel(stbi__write_context *s, int rgb_dir, int comp, int write_alpha, int expand_mono, unsigned char *d)
{
   unsigned char bg[3] = { 255, 0, 255}, px[3];
   int k;

   if (write_alpha < 0)
      s->func(s->context, &d[comp - 1], 1);

   switch (comp) {
      case 2:
      case 1:
         if (expand_mono)
            stbiw__write3(s, d[0], d[0], d[0]);
         else
            s->func(s->context, d, 1);
         break;
      case 4:
         if (!write_alpha) {

            for (k = 0; k < 3; ++k)
               px[k] = bg[k] + ((d[k] - bg[k]) * d[3]) / 255;
            stbiw__write3(s, px[1 - rgb_dir], px[1], px[1 + rgb_dir]);
            break;
         }

      case 3:
         stbiw__write3(s, d[1 - rgb_dir], d[1], d[1 + rgb_dir]);
         break;
   }
   if (write_alpha > 0)
      s->func(s->context, &d[comp - 1], 1);
}
