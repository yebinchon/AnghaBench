
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int image ;


 int load_image (char*,int,int,int) ;

image load_image_color(char *filename, int w, int h)
{
    return load_image(filename, w, h, 3);
}
