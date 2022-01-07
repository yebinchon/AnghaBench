
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int h; int w; } ;
typedef TYPE_1__ image ;


 int free_image (TYPE_1__) ;
 TYPE_1__ load_image_cv (char*,int) ;
 TYPE_1__ load_image_stb (char*,int) ;
 TYPE_1__ resize_image (TYPE_1__,int,int) ;

image load_image(char *filename, int w, int h, int c)
{



    image out = load_image_stb(filename, c);


    if((h && w) && (h != out.h || w != out.w)){
        image resized = resize_image(out, w, h);
        free_image(out);
        out = resized;
    }
    return out;
}
