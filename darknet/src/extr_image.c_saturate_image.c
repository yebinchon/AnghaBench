
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int image ;


 int constrain_image (int ) ;
 int hsv_to_rgb (int ) ;
 int rgb_to_hsv (int ) ;
 int scale_image_channel (int ,int,float) ;

void saturate_image(image im, float sat)
{
    rgb_to_hsv(im);
    scale_image_channel(im, 1, sat);
    hsv_to_rgb(im);
    constrain_image(im);
}
