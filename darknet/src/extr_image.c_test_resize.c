
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int w; int h; int c; int data; } ;
typedef TYPE_1__ image ;


 TYPE_1__ copy_image (TYPE_1__) ;
 int distort_image (TYPE_1__,float,float,float) ;
 int free_image (TYPE_1__) ;
 TYPE_1__ grayscale_image (TYPE_1__) ;
 TYPE_1__ load_image (char*,int ,int ,int) ;
 float mag_array (int ,int) ;
 int printf (char*,float,...) ;
 float rand_scale (float) ;
 float rand_uniform (float,float) ;
 TYPE_1__ random_augment_image (TYPE_1__,int ,double,int,int,int,int) ;
 int show_image (TYPE_1__,char*,int) ;

void test_resize(char *filename)
{
    image im = load_image(filename, 0,0, 3);
    float mag = mag_array(im.data, im.w*im.h*im.c);
    printf("L2 Norm: %f\n", mag);
    image gray = grayscale_image(im);

    image c1 = copy_image(im);
    image c2 = copy_image(im);
    image c3 = copy_image(im);
    image c4 = copy_image(im);
    distort_image(c1, .1, 1.5, 1.5);
    distort_image(c2, -.1, .66666, .66666);
    distort_image(c3, .1, 1.5, .66666);
    distort_image(c4, .1, .66666, 1.5);


    show_image(im, "Original", 1);
    show_image(gray, "Gray", 1);
    show_image(c1, "C1", 1);
    show_image(c2, "C2", 1);
    show_image(c3, "C3", 1);
    show_image(c4, "C4", 1);
}
