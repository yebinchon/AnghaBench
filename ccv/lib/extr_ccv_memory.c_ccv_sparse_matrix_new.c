
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int ccv_sparse_matrix_vector_t ;
struct TYPE_3__ {int rows; int cols; int type; int major; int prime_index; int size; int refcount; int * vector; int * index; scalar_t__ rnum; } ;
typedef TYPE_1__ ccv_sparse_matrix_t ;
typedef int ccv_sparse_matrix_index_t ;


 int CCV_DENSE_VECTOR ;
 int CCV_MATRIX_SPARSE ;
 int CCV_SPARSE_VECTOR ;
 scalar_t__ cccalloc (int,int) ;
 scalar_t__ ccmalloc (int) ;

ccv_sparse_matrix_t* ccv_sparse_matrix_new(int rows, int cols, int type, int major, uint64_t sig)
{
 ccv_sparse_matrix_t* mat;
 mat = (ccv_sparse_matrix_t*)ccmalloc(sizeof(ccv_sparse_matrix_t));
 mat->rows = rows;
 mat->cols = cols;
 mat->type = type | CCV_MATRIX_SPARSE | ((type & CCV_DENSE_VECTOR) ? CCV_DENSE_VECTOR : CCV_SPARSE_VECTOR);
 mat->major = major;
 mat->prime_index = 1;
 mat->size = 2;
 mat->rnum = 0;
 mat->refcount = 1;
 mat->index = (ccv_sparse_matrix_index_t*)cccalloc(sizeof(ccv_sparse_matrix_index_t), mat->size);
 mat->vector = (ccv_sparse_matrix_vector_t*)ccmalloc(sizeof(ccv_sparse_matrix_vector_t) * mat->size);
 return mat;
}
