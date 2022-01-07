
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int ccv_sparse_matrix_vector_t ;
typedef int ccv_sparse_matrix_t ;
struct TYPE_3__ {size_t i; size_t ifbit; } ;
typedef TYPE_1__ ccv_sparse_matrix_index_t ;


 int _ccv_init_sparse_matrix_vector (int * const,int const* const) ;
 int _ccv_sparse_matrix_index_for_hash (size_t const,int const) ;

__attribute__((used)) static inline void _ccv_move_sparse_matrix_vector(ccv_sparse_matrix_index_t* const index, ccv_sparse_matrix_vector_t* const vector, const ccv_sparse_matrix_t* const mat, uint32_t k, uint32_t idx, int i, const uint32_t size, const int prime_index)
{
 uint32_t old_i = index[idx].i;
 index[idx].i = i;
 i = old_i;
 ccv_sparse_matrix_vector_t val = vector[idx];
 _ccv_init_sparse_matrix_vector(vector + idx, mat);

 ++k;
 ++idx;
 for (; k < 255; ++idx, ++k)
 {
  if (idx >= size)
   idx = 0;
  if (!index[idx].ifbit)
  {
   index[idx].ifbit = k;
   index[idx].i = i;
   vector[idx] = val;
   return;
  }
  uint32_t j = index[idx].ifbit;
  if (k > j)
  {
   index[idx].ifbit = k;
   k = j;
   uint32_t old_i = index[idx].i;
   index[idx].i = i;
   i = old_i;
   ccv_sparse_matrix_vector_t old_val = vector[idx];
   vector[idx] = val;
   val = old_val;
  }
 }
 for (;; ++idx, ++k)
 {
  if (idx >= size)
   idx = 0;
  if (!index[idx].ifbit)
  {
   index[idx].ifbit = k > 0xff ? 0xff : k;
   index[idx].i = i;
   vector[idx] = val;
   return;
  }
  uint32_t j = index[idx].ifbit;
  if (j == 0xff)
   j = _ccv_sparse_matrix_index_for_hash(index[idx].i + size - idx, prime_index) + 2;
  if (k > j)
  {
   index[idx].ifbit = k > 0xff ? 0xff : k;
   k = j;
   uint32_t old_i = index[idx].i;
   index[idx].i = i;
   i = old_i;
   ccv_sparse_matrix_vector_t old_val = vector[idx];
   vector[idx] = val;
   val = old_val;
  }
 }
}
