
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int c; } ;
typedef TYPE_1__ image ;


 int free_image (TYPE_1__) ;
 TYPE_1__ get_image_layer (TYPE_1__,int) ;
 int show_image (TYPE_1__,char*,int) ;
 int sprintf (char*,char*,char*,int) ;

void show_image_layers(image p, char *name)
{
    int i;
    char buff[256];
    for(i = 0; i < p.c; ++i){
        sprintf(buff, "%s - Layer %d", name, i);
        image layer = get_image_layer(p, i);
        show_image(layer, buff, 1);
        free_image(layer);
    }
}
