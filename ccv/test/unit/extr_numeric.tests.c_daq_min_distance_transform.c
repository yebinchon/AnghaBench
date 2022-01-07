
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned char* u8; float* f32; } ;
struct TYPE_8__ {int rows; int cols; TYPE_1__ data; int type; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;


 int CCV_32F ;
 int CCV_C1 ;
 scalar_t__ calloc (int,int) ;
 TYPE_2__* ccv_dense_matrix_new (int,int,int,int ,int ) ;
 int ccv_matrix_free (TYPE_2__*) ;
 int ccv_matrix_getter (int ,int ) ;
 int dt_min1d (float*,float*,int*,int,int,double,double) ;
 int for_block ;
 int free (int*) ;

void daq_min_distance_transform(ccv_dense_matrix_t* a, ccv_dense_matrix_t** b, double dx, double dy, double dxx, double dyy)
{
 ccv_dense_matrix_t* dc = ccv_dense_matrix_new(a->rows, a->cols, CCV_32F | CCV_C1, 0, 0);
 ccv_dense_matrix_t* db = *b = ccv_dense_matrix_new(a->rows, a->cols, CCV_32F | CCV_C1, 0, 0);
 unsigned char* a_ptr = a->data.u8;
 float* b_ptr = db->data.f32;
 int i, j;
 ccv_matrix_getter(a->type, for_block);

 int* ix = (int*)calloc(a->cols * a->rows, sizeof(int));
 int* iy = (int*)calloc(a->cols * a->rows, sizeof(int));
 b_ptr = db->data.f32;
 float* c_ptr = dc->data.f32;
 for (i = 0; i < a->rows; i++)
  dt_min1d(b_ptr + i * a->cols, c_ptr + i * a->cols, ix + i * a->cols, 1, a->cols, dxx, dx);
 for (j = 0; j < a->cols; j++)
  dt_min1d(c_ptr + j, b_ptr + j, iy + j, a->cols, a->rows, dyy, dy);
 free(ix);
 free(iy);
 ccv_matrix_free(dc);
}
