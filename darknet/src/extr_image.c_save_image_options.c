
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; int h; int c; int* data; } ;
typedef TYPE_1__ image ;
typedef scalar_t__ IMTYPE ;


 scalar_t__ BMP ;
 scalar_t__ JPG ;
 scalar_t__ PNG ;
 scalar_t__ TGA ;
 unsigned char* calloc (int,int) ;
 int fprintf (int ,char*,char*) ;
 int free (unsigned char*) ;
 int sprintf (char*,char*,char const*) ;
 int stbi_write_bmp (char*,int,int,int,unsigned char*) ;
 int stbi_write_jpg (char*,int,int,int,unsigned char*,int) ;
 int stbi_write_png (char*,int,int,int,unsigned char*,int) ;
 int stbi_write_tga (char*,int,int,int,unsigned char*) ;
 int stderr ;

void save_image_options(image im, const char *name, IMTYPE f, int quality)
{
    char buff[256];

    if(f == PNG) sprintf(buff, "%s.png", name);
    else if (f == BMP) sprintf(buff, "%s.bmp", name);
    else if (f == TGA) sprintf(buff, "%s.tga", name);
    else if (f == JPG) sprintf(buff, "%s.jpg", name);
    else sprintf(buff, "%s.png", name);
    unsigned char *data = calloc(im.w*im.h*im.c, sizeof(char));
    int i,k;
    for(k = 0; k < im.c; ++k){
        for(i = 0; i < im.w*im.h; ++i){
            data[i*im.c+k] = (unsigned char) (255*im.data[i + k*im.w*im.h]);
        }
    }
    int success = 0;
    if(f == PNG) success = stbi_write_png(buff, im.w, im.h, im.c, data, im.w*im.c);
    else if (f == BMP) success = stbi_write_bmp(buff, im.w, im.h, im.c, data);
    else if (f == TGA) success = stbi_write_tga(buff, im.w, im.h, im.c, data);
    else if (f == JPG) success = stbi_write_jpg(buff, im.w, im.h, im.c, data, quality);
    free(data);
    if(!success) fprintf(stderr, "Failed to write image %s\n", buff);
}
