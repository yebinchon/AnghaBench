
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_image_read_control ;


 int P_FILE ;
 int png_create_colormap_entry (int *,unsigned int,unsigned int,unsigned int,unsigned int,int,int ) ;

__attribute__((used)) static int
make_gray_file_colormap(png_image_read_control *display)
{
   unsigned int i;

   for (i=0; i<256; ++i)
      png_create_colormap_entry(display, i, i, i, i, 255, P_FILE);

   return (int)i;
}
