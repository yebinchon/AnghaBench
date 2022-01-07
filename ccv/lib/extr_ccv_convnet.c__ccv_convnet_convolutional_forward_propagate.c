
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {int type; int cols; int rows; } ;
typedef TYPE_3__ ccv_dense_matrix_t ;
struct TYPE_21__ {int channels; int count; int strides; int border; int rows; int cols; } ;
struct TYPE_22__ {TYPE_1__ convolutional; } ;
struct TYPE_24__ {TYPE_2__ net; } ;
typedef TYPE_4__ ccv_convnet_layer_t ;


 int CCV_32F ;
 int CCV_GET_CHANNEL (int ) ;
 int CCV_GET_DATA_TYPE (int ) ;
 int _ccv_convnet_convolutional_forward_propagate_fallback (TYPE_4__*,TYPE_3__*,TYPE_3__*,int,int,int,int,int,int,int,int,int,int) ;
 int _ccv_convnet_convolutional_forward_propagate_neon (TYPE_4__*,TYPE_3__*,TYPE_3__*,int,int,int,int,int,int,int,int,int,int) ;
 int _ccv_convnet_convolutional_forward_propagate_sse2 (TYPE_4__*,TYPE_3__*,TYPE_3__*,int,int,int,int,int,int,int,int,int,int) ;
 int _ccv_convnet_layer_simd_alloc_reserved (TYPE_4__*) ;
 int assert (int) ;
 int ccv_convnet_make_output (TYPE_4__*,int ,int ,int*,int*,int*) ;
 TYPE_3__* ccv_dense_matrix_renew (TYPE_3__*,int,int,int,int,int ) ;

__attribute__((used)) static void _ccv_convnet_convolutional_forward_propagate(ccv_convnet_layer_t* layer, ccv_dense_matrix_t* a, ccv_dense_matrix_t** b)
{
 int rows, cols, partition;
 ccv_convnet_make_output(layer, a->rows, a->cols, &rows, &cols, &partition);
 int ch = layer->net.convolutional.channels;
 int count = layer->net.convolutional.count;
 int strides = layer->net.convolutional.strides;
 int border = layer->net.convolutional.border;
 int kernel_rows = layer->net.convolutional.rows;
 int kernel_cols = layer->net.convolutional.cols;
 int type = CCV_32F | count;
 assert(CCV_GET_CHANNEL(a->type) == ch);
 assert(CCV_GET_DATA_TYPE(a->type) == CCV_32F);
 ccv_dense_matrix_t* db = *b = ccv_dense_matrix_renew(*b, rows, cols, type, type, 0);
 int ch_per_partition = ch / partition;
 int count_per_partition = count / partition;
 assert(count_per_partition % 4 == 0);
 _ccv_convnet_convolutional_forward_propagate_fallback(layer, a, db, rows, cols, ch, count, strides, border, kernel_rows, kernel_cols, ch_per_partition, count_per_partition);

}
