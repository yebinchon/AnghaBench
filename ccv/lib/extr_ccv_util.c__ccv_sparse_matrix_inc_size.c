
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int ifbit; int i; } ;
typedef TYPE_1__ ccv_sparse_matrix_vector_t ;
struct TYPE_8__ {int prime_index; int size; TYPE_1__* vector; TYPE_1__* index; } ;
typedef TYPE_2__ ccv_sparse_matrix_t ;
typedef TYPE_1__ ccv_sparse_matrix_index_t ;
typedef int _ccv_sparse_prime ;


 int _ccv_sparse_matrix_index_for_hash (int,int const) ;
 int _ccv_sparse_matrix_index_next_size_over (int const) ;
 int _ccv_sparse_matrix_size_for_index (int) ;
 int assert (int) ;
 scalar_t__ ccrealloc (TYPE_1__*,int) ;
 int memset (TYPE_1__* const,int ,int) ;

__attribute__((used)) static void _ccv_sparse_matrix_inc_size(ccv_sparse_matrix_t* mat)
{
 assert(mat->prime_index >= 0 && mat->prime_index < sizeof(_ccv_sparse_prime) / sizeof(int));
 const uint32_t size = mat->size;
 const int prime_index = mat->prime_index = _ccv_sparse_matrix_index_next_size_over(size * 2);
 const uint32_t new_size = mat->size = _ccv_sparse_matrix_size_for_index(mat->prime_index);
 assert(mat->prime_index >= 0 && mat->prime_index < sizeof(_ccv_sparse_prime) / sizeof(int));
 ccv_sparse_matrix_index_t* const index = mat->index = (ccv_sparse_matrix_index_t*)ccrealloc(mat->index, sizeof(ccv_sparse_matrix_index_t) * new_size);
 memset(index + size, 0, sizeof(ccv_sparse_matrix_index_t) * (new_size - size));
 ccv_sparse_matrix_vector_t* const vector = mat->vector = (ccv_sparse_matrix_vector_t*)ccrealloc(mat->vector, sizeof(ccv_sparse_matrix_vector_t) * new_size);
 uint32_t i;
 for (i = 0; i < size; i++)
  index[i].ifbit = !!index[i].ifbit;
 for (i = 0; i < size; i++)
  if (index[i].ifbit == 1)
  {
   index[i].ifbit = 0;

   uint32_t key = index[i].i;
   ccv_sparse_matrix_vector_t val = vector[i];
   uint32_t k = 2;
   uint32_t idx = _ccv_sparse_matrix_index_for_hash(key, prime_index);
   for (; k < 255; ++idx, ++k)
   {
    if (idx >= new_size)
     idx = 0;
    uint32_t j = index[idx].ifbit;
    if (!j)
    {
     index[idx].ifbit = k;
     index[idx].i = key;
     vector[idx] = val;
     break;
    }
    if (k <= j)
     continue;
    index[idx].ifbit = k;
    uint32_t old_key = index[idx].i;
    index[idx].i = key;
    key = old_key;
    ccv_sparse_matrix_vector_t old_val = vector[idx];
    vector[idx] = val;
    val = old_val;
    if (j != 1)
     k = j;
    else {
     idx = _ccv_sparse_matrix_index_for_hash(key, prime_index) - 1;
     k = 1;
    }
   }
   if (k < 255)
    continue;
   for (;; ++idx, ++k)
   {
    if (idx >= new_size)
     idx = 0;
    uint32_t j = index[idx].ifbit;
    if (!j)
    {
     index[idx].ifbit = k > 0xff ? 0xff : k;
     index[idx].i = key;
     vector[idx] = val;
     break;
    }
    if (j == 0xff)
     j = _ccv_sparse_matrix_index_for_hash((index[idx].i + new_size - idx), prime_index) + 2;
    if (k <= j)
     continue;
    index[idx].ifbit = k > 0xff ? 0xff : k;
    uint32_t old_key = index[idx].i;
    index[idx].i = key;
    key = old_key;
    ccv_sparse_matrix_vector_t old_val = vector[idx];
    vector[idx] = val;
    val = old_val;
    if (j != 1)
     k = j;
    else {
     idx = _ccv_sparse_matrix_index_for_hash(key, prime_index) - 1;
     k = 1;
    }
   }
  }
}
