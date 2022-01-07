
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_17__ {int count; TYPE_8__* layers; } ;
typedef TYPE_7__ ccv_convnet_t ;
struct TYPE_15__ {int count; } ;
struct TYPE_14__ {int rows; int cols; int channels; } ;
struct TYPE_16__ {TYPE_5__ node; TYPE_4__ matrix; } ;
struct TYPE_12__ {int channels; int count; } ;
struct TYPE_11__ {scalar_t__ relu; } ;
struct TYPE_13__ {TYPE_2__ convolutional; TYPE_1__ full_connect; } ;
struct TYPE_18__ {scalar_t__ type; TYPE_6__ input; TYPE_3__ net; } ;
typedef TYPE_8__ ccv_convnet_layer_t ;


 scalar_t__ CCV_CONVNET_CONVOLUTIONAL ;
 scalar_t__ CCV_CONVNET_FULL_CONNECT ;
 int ccv_convnet_make_output (TYPE_8__*,int,int,int*,int*,int*) ;

int ccv_convnet_verify(ccv_convnet_t* convnet, int output)
{
 int i, out_rows, out_cols, out_partition, out_channels;
 if (convnet->count < 1)
  return -1;

 if (convnet->layers[convnet->count - 1].type != CCV_CONVNET_FULL_CONNECT)
  return -1;

 if (convnet->layers[convnet->count - 1].net.full_connect.relu)
  return -1;
 out_channels = 3;
 for (i = 0; i < convnet->count; i++)
 {
  ccv_convnet_layer_t* layer = convnet->layers + i;
  if (i > 0 && (out_rows != layer->input.matrix.rows || out_cols != layer->input.matrix.cols))
   return -1;

  if (out_channels != layer->input.matrix.channels && layer->type != CCV_CONVNET_FULL_CONNECT)
   return -1;
  ccv_convnet_make_output(layer, layer->input.matrix.rows, layer->input.matrix.cols, &out_rows, &out_cols, &out_partition);
  if (layer->type == CCV_CONVNET_CONVOLUTIONAL)
  {

   if (layer->input.matrix.channels != layer->net.convolutional.channels)
    return -1;

   out_channels = layer->net.convolutional.count;
  }
 }
 if (out_rows * out_cols != output)
  return -1;
 int count = 0;
 for (i = 0; i < convnet->count; i++)
 {
  ccv_convnet_layer_t* layer = convnet->layers + i;
  if (layer->type == CCV_CONVNET_FULL_CONNECT)
  {
   count = i;
   break;
  }
 }

 for (i = count; i < convnet->count; i++)
  if (convnet->layers[i].type != CCV_CONVNET_FULL_CONNECT ||
   convnet->layers[i].input.matrix.rows * convnet->layers[i].input.matrix.cols * convnet->layers[i].input.matrix.channels != convnet->layers[i].input.node.count)
   return -1;
 return 0;
}
