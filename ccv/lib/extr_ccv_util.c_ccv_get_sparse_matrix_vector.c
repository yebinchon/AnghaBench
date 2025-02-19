
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ccv_sparse_matrix_vector_t ;
struct TYPE_4__ {int size; int prime_index; int * vector; TYPE_2__* index; } ;
typedef TYPE_1__ ccv_sparse_matrix_t ;
struct TYPE_5__ {int ifbit; int i; } ;
typedef TYPE_2__ ccv_sparse_matrix_index_t ;


 int _ccv_sparse_matrix_index_for_hash (int const,int const) ;

ccv_sparse_matrix_vector_t* ccv_get_sparse_matrix_vector(const ccv_sparse_matrix_t* mat, int i)
{
 const uint32_t size = mat->size;
 ccv_sparse_matrix_index_t* index = mat->index;
 ccv_sparse_matrix_vector_t* vector = mat->vector;
 const int prime_index = mat->prime_index;
 uint32_t idx = _ccv_sparse_matrix_index_for_hash(i, prime_index);
 uint32_t k = 2;
 for (; k < 255; ++idx, ++k)
 {
  if (idx >= size)
   idx = 0;
  if (k > index[idx].ifbit)
   return 0;
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
   return 0;
  if (index[idx].i == i)
   return vector + idx;
 }
 return 0;
}
