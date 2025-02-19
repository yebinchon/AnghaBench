
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int width; int y_origin; int height; int bpp; int x_origin; int descriptor; } ;
struct TYPE_3__ {int offset; int length; int bpp; } ;
struct tga_header {int image_type; int id_length; int color_map_type; TYPE_2__ image_info; TYPE_1__ colormap_info; } ;
typedef int header ;
typedef int FILE ;


 int TGA_WRITE (int *,int) ;
 size_t fwrite (int *,int,size_t,int *) ;
 int memset (struct tga_header*,int ,int) ;
 int tga_type_true_color ;

int write_tga(FILE *fp, int width, int height,
      uint8_t *buffer, size_t buffer_size)
{
   struct tga_header header;
   memset(&header, 0, sizeof(header));
   header.image_type = tga_type_true_color;
   header.image_info.width = width;
   header.image_info.y_origin = height;
   header.image_info.height = height;
   header.image_info.bpp = 32;

   TGA_WRITE(fp, header.id_length);
   TGA_WRITE(fp, header.color_map_type);
   TGA_WRITE(fp, header.image_type);
   TGA_WRITE(fp, header.colormap_info.offset);
   TGA_WRITE(fp, header.colormap_info.length);
   TGA_WRITE(fp, header.colormap_info.bpp);
   TGA_WRITE(fp, header.image_info.x_origin);
   TGA_WRITE(fp, header.image_info.y_origin);
   TGA_WRITE(fp, header.image_info.width);
   TGA_WRITE(fp, header.image_info.height);
   TGA_WRITE(fp, header.image_info.bpp);
   TGA_WRITE(fp, header.image_info.descriptor);

   if (fwrite(buffer, 1, buffer_size, fp) != buffer_size)
      goto write_fail;

   return 0;
write_fail:
   return -1;
}
