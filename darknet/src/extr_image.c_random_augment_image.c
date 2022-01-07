
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int image ;
struct TYPE_3__ {int aspect; int dy; int dx; int h; int w; int scale; int rad; } ;
typedef TYPE_1__ augment_args ;


 TYPE_1__ random_augment_args (int ,float,float,int,int,int,int) ;
 int rotate_crop_image (int ,int ,int ,int ,int ,int ,int ,int ) ;

image random_augment_image(image im, float angle, float aspect, int low, int high, int w, int h)
{
    augment_args a = random_augment_args(im, angle, aspect, low, high, w, h);
    image crop = rotate_crop_image(im, a.rad, a.scale, a.w, a.h, a.dx, a.dy, a.aspect);
    return crop;
}
