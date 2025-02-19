
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int c; int w; int h; int data; } ;
typedef TYPE_1__ image ;
struct TYPE_8__ {int n; float* biases; } ;
typedef TYPE_2__ convolutional_layer ;


 TYPE_1__ get_convolutional_weight (TYPE_2__,int) ;
 int scale_image (TYPE_1__,float) ;
 float sum_array (int ,int) ;

void rescale_weights(convolutional_layer l, float scale, float trans)
{
    int i;
    for(i = 0; i < l.n; ++i){
        image im = get_convolutional_weight(l, i);
        if (im.c == 3) {
            scale_image(im, scale);
            float sum = sum_array(im.data, im.w*im.h*im.c);
            l.biases[i] += sum*trans;
        }
    }
}
