
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int image ;
struct TYPE_5__ {int n; } ;
typedef TYPE_1__ convolutional_layer ;


 int collapse_image_layers (int ,int) ;
 int free_image (int ) ;
 int get_convolutional_image (TYPE_1__) ;
 int * get_weights (TYPE_1__) ;
 int show_images (int *,int ,char*) ;
 int sprintf (char*,char*,char*) ;

image *visualize_convolutional_layer(convolutional_layer l, char *window, image *prev_weights)
{
    image *single_weights = get_weights(l);
    show_images(single_weights, l.n, window);

    image delta = get_convolutional_image(l);
    image dc = collapse_image_layers(delta, 1);
    char buff[256];
    sprintf(buff, "%s: Output", window);


    free_image(dc);
    return single_weights;
}
