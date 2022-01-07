
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int image ;
struct TYPE_3__ {int delta; int out_c; int out_h; int out_w; } ;
typedef TYPE_1__ convolutional_layer ;


 int float_to_image (int ,int ,int ,int ) ;

image get_convolutional_delta(convolutional_layer l)
{
    return float_to_image(l.out_w,l.out_h,l.out_c,l.delta);
}
