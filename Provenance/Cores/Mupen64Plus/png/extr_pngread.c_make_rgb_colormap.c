
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_image_read_control ;


 int P_sRGB ;
 int png_create_colormap_entry (int *,int ,unsigned int,unsigned int,unsigned int,int,int ) ;

__attribute__((used)) static int
make_rgb_colormap(png_image_read_control *display)
{
   unsigned int i, r;


   for (i=r=0; r<6; ++r)
   {
      unsigned int g;

      for (g=0; g<6; ++g)
      {
         unsigned int b;

         for (b=0; b<6; ++b)
            png_create_colormap_entry(display, i++, r*51, g*51, b*51, 255,
                P_sRGB);
      }
   }

   return (int)i;
}
