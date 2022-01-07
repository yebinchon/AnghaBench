
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_5__* layers; } ;
typedef TYPE_4__ ccv_convnet_t ;
struct TYPE_8__ {int strides; } ;
struct TYPE_7__ {int strides; } ;
struct TYPE_9__ {TYPE_2__ pool; TYPE_1__ convolutional; } ;
struct TYPE_11__ {int type; TYPE_3__ net; } ;
typedef TYPE_5__ ccv_convnet_layer_t ;






__attribute__((used)) static int _ccv_convnet_derive_scale(ccv_convnet_t* convnet, int scan)
{
 int i, scale = 1;
 for (i = scan; i >= 0; i--)
 {
  ccv_convnet_layer_t* layer = convnet->layers + i;
  switch (layer->type)
  {
   case 129:
    scale *= layer->net.convolutional.strides;
    break;
   case 128:
   case 130:
    scale *= layer->net.pool.strides;
    break;
  }
 }
 return scale;
}
