
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ccv_sparse_matrix_vector_t ;
struct TYPE_7__ {int size; int prime_index; int rnum; int * vector; TYPE_2__* index; } ;
typedef TYPE_1__ ccv_sparse_matrix_t ;
struct TYPE_8__ {int ifbit; int i; } ;
typedef TYPE_2__ ccv_sparse_matrix_index_t ;


 int _ccv_init_sparse_matrix_vector (int * const,TYPE_1__*) ;
 int _ccv_move_sparse_matrix_vector (TYPE_2__* const,int * const,TYPE_1__*,int,int,int,int const,int const) ;
 int _ccv_sparse_matrix_index_for_hash (int,int const) ;

__attribute__((used)) static ccv_sparse_matrix_vector_t* _ccv_get_or_add_sparse_matrix_vector(ccv_sparse_matrix_t* mat, int i)
{
 const uint32_t size = mat->size;
 ccv_sparse_matrix_index_t* const index = mat->index;
 ccv_sparse_matrix_vector_t* const vector = mat->vector;
 const int prime_index = mat->prime_index;
 uint32_t idx = _ccv_sparse_matrix_index_for_hash(i, prime_index);
 uint32_t k = 2;
 for (; k < 255; ++idx, ++k)
 {
  if (idx >= size)
   idx = 0;
  uint32_t j = index[idx].ifbit;
  if (k > j)
  {
   ++mat->rnum;
   index[idx].ifbit = k;
   if (!j)
   {
    index[idx].i = i;
    _ccv_init_sparse_matrix_vector(vector + idx, mat);
   } else
    _ccv_move_sparse_matrix_vector(index, vector, mat, j , idx, i, size, prime_index);
   return vector + idx;
  }
  if (index[idx].i == i)
   return vector + idx;
 }

 for (;; ++idx, ++k)
 {
  if (idx >= size)
   idx = 0;
  uint32_t j = index[idx].ifbit;
  if (j == 0xff)
   j = _ccv_sparse_matrix_index_for_hash(index[idx].i + size - idx, prime_index) + 2;
  if (k > j)
  {
   ++mat->rnum;
   index[idx].ifbit = k > 0xff ? 0xff : k;
   if (!j)
   {
    index[idx].i = i;
    _ccv_init_sparse_matrix_vector(vector + idx, mat);
   } else
    _ccv_move_sparse_matrix_vector(index, vector, mat, j , idx, i, size, prime_index);
   return vector + idx;
  }
  if (index[idx].i == i)
   return vector + idx;
 }
 return 0;
}
