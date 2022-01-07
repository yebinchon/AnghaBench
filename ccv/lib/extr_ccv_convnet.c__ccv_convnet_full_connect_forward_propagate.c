
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int ccv_matrix_t ;
struct TYPE_15__ {float* f32; } ;
struct TYPE_18__ {int type; int rows; int cols; int step; TYPE_1__ data; } ;
typedef TYPE_4__ ccv_dense_matrix_t ;
struct TYPE_16__ {scalar_t__ relu; int count; } ;
struct TYPE_17__ {TYPE_2__ full_connect; } ;
struct TYPE_19__ {int wnum; float* bias; TYPE_3__ net; int w; } ;
typedef TYPE_5__ ccv_convnet_layer_t ;


 int CCV_32F ;
 int CCV_C1 ;
 int CCV_GET_CHANNEL (int) ;
 int CCV_GET_DATA_TYPE (int) ;
 int CCV_GET_DATA_TYPE_SIZE (int) ;
 int assert (int) ;
 TYPE_4__ ccv_dense_matrix (int,int,int,int ,int ) ;
 TYPE_4__* ccv_dense_matrix_renew (TYPE_4__*,int ,int,int,int,int ) ;
 int ccv_gemm (TYPE_4__*,TYPE_4__*,int,TYPE_4__*,int,int ,int **,int ) ;
 float ccv_max (int ,float) ;

__attribute__((used)) static void _ccv_convnet_full_connect_forward_propagate(ccv_convnet_layer_t* layer, ccv_dense_matrix_t* a, ccv_dense_matrix_t** b)
{
 assert(CCV_GET_DATA_TYPE(a->type) == CCV_32F);
 ccv_dense_matrix_t* db = *b = ccv_dense_matrix_renew(*b, layer->net.full_connect.count, 1, CCV_32F | CCV_C1, CCV_32F | CCV_C1, 0);
 int ch = CCV_GET_CHANNEL(a->type);
 int rows = a->rows, cols = a->cols;

 assert(a->step == a->cols * CCV_GET_DATA_TYPE_SIZE(a->type) * ch);
 a->rows = rows * cols * ch, a->cols = 1, a->type = (a->type - ch) | CCV_C1;
 assert(a->rows * db->rows == layer->wnum);
 a->step = a->cols * CCV_GET_DATA_TYPE_SIZE(a->type);
 int i;
 float* bptr = db->data.f32;
 for (i = 0; i < db->rows; i++)
  bptr[i] = layer->bias[i];
 ccv_dense_matrix_t dw = ccv_dense_matrix(db->rows, a->rows, CCV_32F | CCV_C1, layer->w, 0);
 ccv_gemm(&dw, a, 1, db, 1, 0, (ccv_matrix_t**)&db, 0);
 if (layer->net.full_connect.relu)
  for (i = 0; i < db->rows; i++)
   bptr[i] = ccv_max(0, bptr[i]);
 a->rows = rows, a->cols = cols, a->type = (a->type - CCV_GET_CHANNEL(a->type)) | ch;
 a->step = a->cols * CCV_GET_DATA_TYPE_SIZE(a->type) * CCV_GET_CHANNEL(a->type);
}
