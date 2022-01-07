
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int w; int h; } ;
typedef TYPE_1__ image ;


 TYPE_1__ crop_image (TYPE_1__,int,int,int,int) ;
 int free_image (TYPE_1__) ;
 TYPE_1__ resize_image (TYPE_1__,int,int) ;

image center_crop_image(image im, int w, int h)
{
    int m = (im.w < im.h) ? im.w : im.h;
    image c = crop_image(im, (im.w - m) / 2, (im.h - m)/2, m, m);
    image r = resize_image(c, w, h);
    free_image(c);
    return r;
}
