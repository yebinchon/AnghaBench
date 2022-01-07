
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_const_bytep ;
typedef scalar_t__ png_colorp ;
typedef scalar_t__ png_bytep ;


 int exit (int) ;
 int fprintf (int ,char*,unsigned int) ;
 int set_color (scalar_t__,scalar_t__,int,int,int,int,int ) ;
 int stderr ;
 int xyinterp (unsigned int,unsigned int,int,int,int,int) ;

__attribute__((used)) static int
generate_palette(png_colorp palette, png_bytep trans, int bit_depth,
   png_const_bytep gamma_table, unsigned int *colors)
{
   switch (colors[0])
   {
      default:
         fprintf(stderr, "makepng: --colors=...: invalid count %u\n",
            colors[0]);
         exit(1);

      case 1:
         set_color(palette+0, trans+0, colors[1], colors[1], colors[1], 255,
            gamma_table);
         return 1;

      case 2:
         set_color(palette+0, trans+0, colors[1], colors[1], colors[1],
            colors[2], gamma_table);
         return 1;

      case 3:
         set_color(palette+0, trans+0, colors[1], colors[2], colors[3], 255,
            gamma_table);
         return 1;

      case 4:
         set_color(palette+0, trans+0, colors[1], colors[2], colors[3],
            colors[4], gamma_table);
         return 1;

      case 0:
         if (bit_depth == 1)
         {
            set_color(palette+0, trans+0, 255, 0, 0, 0, gamma_table);
            set_color(palette+1, trans+1, 255, 255, 255, 255, gamma_table);
            return 2;
         }

         else
         {
            unsigned int size = 1U << (bit_depth/2);
            unsigned int x, y;
            volatile unsigned int ip = 0;

            for (x=0; x<size; ++x) for (y=0; y<size; ++y)
            {
               ip = x + (size * y);
               set_color(palette+ip, trans+ip,

                  (((size * size / 2) + (((x * 0) + ((size-x) * 255)) * y + (size-y) * ((x * 0) + ((size-x) * 255)))) / (size*size)),
                  (((size * size / 2) + (((x * 255) + ((size-x) * 0)) * y + (size-y) * ((x * 0) + ((size-x) * 255)))) / (size*size)),
                  (((size * size / 2) + (((x * 0) + ((size-x) * 0)) * y + (size-y) * ((x * 255) + ((size-x) * 255)))) / (size*size)),

                  (((size * size / 2) + (((x * 0) + ((size-x) * 102)) * y + (size-y) * ((x * 204) + ((size-x) * 255)))) / (size*size)),
                  gamma_table);
            }

            return ip+1;
         }
   }
}
