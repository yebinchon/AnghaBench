
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_image_read_control ;


 int P_sRGB ;
 int png_create_colormap_entry (int *,int ,unsigned int,unsigned int,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int
make_ga_colormap(png_image_read_control *display)
{
   unsigned int i, a;
   i = 0;
   while (i < 231)
   {
      unsigned int gray = (i * 256 + 115) / 231;
      png_create_colormap_entry(display, i++, gray, gray, gray, 255, P_sRGB);
   }




   png_create_colormap_entry(display, i++, 255, 255, 255, 0, P_sRGB);

   for (a=1; a<5; ++a)
   {
      unsigned int g;

      for (g=0; g<6; ++g)
         png_create_colormap_entry(display, i++, g*51, g*51, g*51, a*51,
             P_sRGB);
   }

   return (int)i;
}
