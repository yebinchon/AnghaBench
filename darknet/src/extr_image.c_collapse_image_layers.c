
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int h; int c; int w; } ;
typedef TYPE_1__ image ;


 int embed_image (TYPE_1__,TYPE_1__,int ,int) ;
 int free_image (TYPE_1__) ;
 TYPE_1__ get_image_layer (TYPE_1__,int) ;
 TYPE_1__ make_image (int ,int,int) ;

image collapse_image_layers(image source, int border)
{
    int h = source.h;
    h = (h+border)*source.c - border;
    image dest = make_image(source.w, h, 1);
    int i;
    for(i = 0; i < source.c; ++i){
        image layer = get_image_layer(source, i);
        int h_offset = i*(source.h+border);
        embed_image(layer, dest, 0, h_offset);
        free_image(layer);
    }
    return dest;
}
