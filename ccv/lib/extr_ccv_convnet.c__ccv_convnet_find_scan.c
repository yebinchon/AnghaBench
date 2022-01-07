
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; TYPE_2__* layers; } ;
typedef TYPE_1__ ccv_convnet_t ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_2__ ccv_convnet_layer_t ;


 scalar_t__ CCV_CONVNET_CONVOLUTIONAL ;

__attribute__((used)) static int _ccv_convnet_find_scan(ccv_convnet_t* convnet)
{
 int i;
 ccv_convnet_layer_t* layers = convnet->layers;
 for (i = convnet->count - 1; i >= 0; i--)
  if (layers[i].type == CCV_CONVNET_CONVOLUTIONAL)
   return i;
 return -1;
}
