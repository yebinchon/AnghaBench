
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int h; int w; } ;
typedef TYPE_1__ network ;
struct TYPE_11__ {int data; } ;
typedef TYPE_2__ image ;


 int free_image (TYPE_2__) ;
 TYPE_2__ letterbox_image (TYPE_2__,int ,int ) ;
 float* network_predict (TYPE_1__*,int ) ;
 int set_batch_network (TYPE_1__*,int) ;

float *network_predict_image(network *net, image im)
{
    image imr = letterbox_image(im, net->w, net->h);
    set_batch_network(net, 1);
    float *p = network_predict(net, imr.data);
    free_image(imr);
    return p;
}
