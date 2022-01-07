
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int u8; } ;
struct TYPE_7__ {int u8; } ;
struct TYPE_9__ {int rows; int cols; int type; TYPE_2__ data; TYPE_1__ tb; int sig; int refcount; int step; } ;
typedef TYPE_3__ ccv_dense_matrix_t ;


 int CCV_GARBAGE ;
 int CCV_GET_CHANNEL (int) ;
 int CCV_GET_DATA_TYPE (int) ;
 int CCV_MATRIX_DENSE ;
 int CCV_NO_DATA_ALLOC ;
 int CCV_UNMANAGED ;
 int assert (int) ;
 int ccv_get_dense_matrix_cell (TYPE_3__*,int,int,int ) ;

ccv_dense_matrix_t ccv_reshape(ccv_dense_matrix_t* a, int y, int x, int rows, int cols)
{
 assert(y + rows <= a->rows);
 assert(x + cols <= a->cols);
 assert(x >= 0 && y >= 0);
 ccv_dense_matrix_t b = {
  .type = (CCV_UNMANAGED | CCV_GET_DATA_TYPE(a->type) | CCV_GET_CHANNEL(a->type) | CCV_NO_DATA_ALLOC | CCV_MATRIX_DENSE) & ~CCV_GARBAGE,
  .rows = rows,
  .cols = cols,
  .step = a->step,
  .refcount = 0,
  .sig = 0,
  .tb.u8 = 0,
  .data.u8 = ccv_get_dense_matrix_cell(a, y, x, 0),
 };
 return b;
}
