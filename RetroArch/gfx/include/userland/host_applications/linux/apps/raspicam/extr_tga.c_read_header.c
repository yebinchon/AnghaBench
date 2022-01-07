
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int descriptor; int bpp; int height; int width; int y_origin; int x_origin; } ;
struct TYPE_3__ {int bpp; int length; int offset; } ;
struct tga_header {TYPE_2__ image_info; TYPE_1__ colormap_info; int image_type; int color_map_type; int id_length; } ;
typedef int FILE ;


 int TGA_READ (int *,int ) ;

__attribute__((used)) static int read_header(FILE *fp, struct tga_header *header) {
    TGA_READ(fp, header->id_length);
    TGA_READ(fp, header->color_map_type);
    TGA_READ(fp, header->image_type);
    TGA_READ(fp, header->colormap_info.offset);
    TGA_READ(fp, header->colormap_info.length);
    TGA_READ(fp, header->colormap_info.bpp);
    TGA_READ(fp, header->image_info.x_origin);
    TGA_READ(fp, header->image_info.y_origin);
    TGA_READ(fp, header->image_info.width);
    TGA_READ(fp, header->image_info.height);
    TGA_READ(fp, header->image_info.bpp);
    TGA_READ(fp, header->image_info.descriptor);

    return 0;

read_fail:
    return -1;
}
