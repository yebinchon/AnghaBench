
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int ccv_dense_matrix_t ;
struct TYPE_8__ {int type; } ;
typedef TYPE_1__ ccv_convnet_layer_t ;







 int _ccv_convnet_average_pool_forward_propagate (TYPE_1__*,int *,int **) ;
 int _ccv_convnet_convolutional_forward_propagate (TYPE_1__*,int *,int **) ;
 int _ccv_convnet_full_connect_forward_propagate (TYPE_1__*,int *,int **) ;
 int _ccv_convnet_max_pool_forward_propagate (TYPE_1__*,int *,int **) ;
 int _ccv_convnet_rnorm_forward_propagate (TYPE_1__*,int *,int **,int **) ;

__attribute__((used)) static void _ccv_convnet_layer_forward_propagate(ccv_convnet_layer_t* layer, ccv_dense_matrix_t* a, ccv_dense_matrix_t** b, ccv_dense_matrix_t** denoms)
{
 switch(layer->type)
 {
  case 131:
   _ccv_convnet_convolutional_forward_propagate(layer, a, b);
   break;
  case 130:
   _ccv_convnet_full_connect_forward_propagate(layer, a, b);
   break;
  case 129:
   _ccv_convnet_rnorm_forward_propagate(layer, a, b, denoms);
   break;
  case 128:
   _ccv_convnet_max_pool_forward_propagate(layer, a, b);
   break;
  case 132:
   _ccv_convnet_average_pool_forward_propagate(layer, a, b);
   break;
 }
}
