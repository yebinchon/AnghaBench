
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int image ;
struct TYPE_4__ {int n; } ;
typedef TYPE_1__ convolutional_layer ;


 int * calloc (int,int) ;
 int copy_image (int ) ;
 int get_convolutional_weight (TYPE_1__,int) ;
 int normalize_image (int ) ;

image *get_weights(convolutional_layer l)
{
    image *weights = calloc(l.n, sizeof(image));
    int i;
    for(i = 0; i < l.n; ++i){
        weights[i] = copy_image(get_convolutional_weight(l, i));
        normalize_image(weights[i]);





    }

    return weights;
}
