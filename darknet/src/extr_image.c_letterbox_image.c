
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int w; int h; int c; } ;
typedef TYPE_1__ image ;


 int embed_image (TYPE_1__,TYPE_1__,int,int) ;
 int fill_image (TYPE_1__,double) ;
 int free_image (TYPE_1__) ;
 TYPE_1__ make_image (int,int,int ) ;
 TYPE_1__ resize_image (TYPE_1__,int,int) ;

image letterbox_image(image im, int w, int h)
{
    int new_w = im.w;
    int new_h = im.h;
    if (((float)w/im.w) < ((float)h/im.h)) {
        new_w = w;
        new_h = (im.h * w)/im.w;
    } else {
        new_h = h;
        new_w = (im.w * h)/im.h;
    }
    image resized = resize_image(im, new_w, new_h);
    image boxed = make_image(w, h, im.c);
    fill_image(boxed, .5);


    embed_image(resized, boxed, (w-new_w)/2, (h-new_h)/2);
    free_image(resized);
    return boxed;
}
