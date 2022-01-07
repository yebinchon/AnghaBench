
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int image ;
struct TYPE_3__ {int size; int c; int groups; scalar_t__ weights; } ;
typedef TYPE_1__ convolutional_layer ;


 int float_to_image (int,int,int,scalar_t__) ;

image get_convolutional_weight(convolutional_layer l, int i)
{
    int h = l.size;
    int w = l.size;
    int c = l.c/l.groups;
    return float_to_image(w,h,c,l.weights+i*h*w*c);
}
