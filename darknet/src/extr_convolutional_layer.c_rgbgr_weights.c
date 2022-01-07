
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int c; } ;
typedef TYPE_1__ image ;
struct TYPE_8__ {int n; } ;
typedef TYPE_2__ convolutional_layer ;


 TYPE_1__ get_convolutional_weight (TYPE_2__,int) ;
 int rgbgr_image (TYPE_1__) ;

void rgbgr_weights(convolutional_layer l)
{
    int i;
    for(i = 0; i < l.n; ++i){
        image im = get_convolutional_weight(l, i);
        if (im.c == 3) {
            rgbgr_image(im);
        }
    }
}
