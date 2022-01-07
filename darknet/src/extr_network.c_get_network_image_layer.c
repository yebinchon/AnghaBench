
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* layers; } ;
typedef TYPE_1__ network ;
struct TYPE_8__ {int output; scalar_t__ out_c; scalar_t__ out_h; scalar_t__ out_w; } ;
typedef TYPE_2__ layer ;
struct TYPE_9__ {int member_0; } ;
typedef TYPE_3__ image ;


 TYPE_3__ float_to_image (scalar_t__,scalar_t__,scalar_t__,int ) ;

image get_network_image_layer(network *net, int i)
{
    layer l = net->layers[i];



    if (l.out_w && l.out_h && l.out_c){
        return float_to_image(l.out_w, l.out_h, l.out_c, l.output);
    }
    image def = {0};
    return def;
}
