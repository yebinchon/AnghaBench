
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bpp; int width; int height; } ;
struct tga_header {scalar_t__ image_type; scalar_t__ id_length; TYPE_1__ image_info; } ;
typedef int FILE ;


 int SEEK_CUR ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (unsigned char*,int,int,int *) ;
 int free (unsigned char*) ;
 int fseek (int *,int ,scalar_t__) ;
 unsigned char* malloc (int) ;
 scalar_t__ read_header (int *,struct tga_header*) ;
 scalar_t__ tga_type_true_color ;

unsigned char *load_tga(const char *filename, struct tga_header *header) {
    unsigned char *image = ((void*)0);
    FILE *fp = fopen(filename, "r");
    if (fp) {
        if(read_header(fp, header) == 0) {
            if (header->image_type == tga_type_true_color &&
                (header->image_info.bpp == 24 ||
                header->image_info.bpp == 32)) {
                int buflen = header->image_info.width *
                   header->image_info.height * (header->image_info.bpp / 8);
                image = malloc(buflen);
                if (image) {
                    if (header->id_length)
                        fseek(fp, SEEK_CUR, header->id_length);

                    if (fread(image, 1, buflen, fp) != buflen) {
                        free(image);
                        image = ((void*)0);
                    }
                }
            }
        }
        fclose(fp);
    }
    return image;
}
