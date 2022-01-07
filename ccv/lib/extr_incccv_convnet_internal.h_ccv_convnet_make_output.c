
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int partition; } ;
struct TYPE_14__ {TYPE_5__ matrix; } ;
struct TYPE_11__ {int border; int strides; int size; } ;
struct TYPE_10__ {int count; } ;
struct TYPE_9__ {int rows; int cols; int border; int strides; } ;
struct TYPE_12__ {TYPE_3__ pool; TYPE_2__ full_connect; TYPE_1__ convolutional; } ;
struct TYPE_15__ {int type; TYPE_6__ input; TYPE_4__ net; } ;
typedef TYPE_7__ ccv_convnet_layer_t ;







 int assert (int) ;

__attribute__((used)) inline static void ccv_convnet_make_output(ccv_convnet_layer_t* layer, int input_rows, int input_cols, int* rows, int* cols, int* partition)
{
 assert(rows != 0 && cols != 0);
 switch(layer->type)
 {
  case 131:
   assert(layer->net.convolutional.rows % 2);
   assert(layer->net.convolutional.cols % 2);
   assert((input_rows + layer->net.convolutional.border * 2 - layer->net.convolutional.rows) % layer->net.convolutional.strides == 0);
   assert((input_cols + layer->net.convolutional.border * 2 - layer->net.convolutional.cols) % layer->net.convolutional.strides == 0);
   *rows = (input_rows + layer->net.convolutional.border * 2 - layer->net.convolutional.rows + layer->net.convolutional.strides - 1) / layer->net.convolutional.strides + 1;
   *cols = (input_cols + layer->net.convolutional.border * 2 - layer->net.convolutional.cols + layer->net.convolutional.strides - 1) / layer->net.convolutional.strides + 1;
   *partition = layer->input.matrix.partition;
   break;
  case 130:
   *rows = layer->net.full_connect.count;
   *cols = 1;
   *partition = 1;
   break;
  case 129:
   *rows = input_rows;
   *cols = input_cols;
   *partition = layer->input.matrix.partition;
   break;
  case 128:
  case 132:
   assert((input_rows + layer->net.pool.border * 2 - layer->net.pool.size) % layer->net.pool.strides == 0);
   assert((input_cols + layer->net.pool.border * 2 - layer->net.pool.size) % layer->net.pool.strides == 0);
   *rows = (input_rows + layer->net.pool.border * 2 - layer->net.pool.size + layer->net.pool.strides - 1) / layer->net.pool.strides + 1;
   *cols = (input_cols + layer->net.pool.border * 2 - layer->net.pool.size + layer->net.pool.strides - 1) / layer->net.pool.strides + 1;
   *partition = layer->input.matrix.partition;
   break;
  default:
   assert(0);
   break;
 }
}
