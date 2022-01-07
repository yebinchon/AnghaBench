
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int w; int h; int c; int * data; } ;
typedef TYPE_1__ image ;


 float mag_array (int *,int) ;
 TYPE_1__ make_image (int,int,int) ;
 int rand_normal () ;
 int scale_array (int *,int,int) ;

image random_unit_vector_image(int w, int h, int c)
{
    image im = make_image(w, h, c);
    int i;
    for(i = 0; i < im.w*im.h*im.c; ++i){
        im.data[i] = rand_normal();
    }
    float mag = mag_array(im.data, im.w*im.h*im.c);
    scale_array(im.data, im.w*im.h*im.c, 1./mag);
    return im;
}
