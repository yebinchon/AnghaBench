
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {int prime_index; int size; TYPE_3__* index; } ;
typedef TYPE_1__ ccv_sparse_matrix_vector_t ;
struct TYPE_9__ {int type; } ;
typedef TYPE_2__ ccv_sparse_matrix_t ;
struct TYPE_10__ {int ifbit; int i; } ;
typedef TYPE_3__ ccv_sparse_matrix_index_t ;
typedef int _ccv_sparse_prime ;


 int CCV_GET_CHANNEL (int ) ;
 int CCV_GET_DATA_TYPE_SIZE (int ) ;
 int _ccv_sparse_matrix_index_for_hash (int const,int const) ;
 int _ccv_sparse_matrix_index_next_size_over (int const) ;
 int _ccv_sparse_matrix_size_for_index (int) ;
 int assert (int) ;
 scalar_t__ ccrealloc (TYPE_3__*,size_t const) ;
 int memcpy (TYPE_3__*,int*,size_t const) ;
 int memset (int * const,int ,size_t const) ;

__attribute__((used)) static void _ccv_sparse_matrix_vector_inc_size(const ccv_sparse_matrix_t* const mat, ccv_sparse_matrix_vector_t* const vector)
{
 assert(vector->prime_index >= 0 && vector->prime_index < sizeof(_ccv_sparse_prime) / sizeof(int));
 const uint32_t size = vector->size;
 const int prime_index = vector->prime_index = _ccv_sparse_matrix_index_next_size_over(size * 2);
 const uint32_t new_size = vector->size = _ccv_sparse_matrix_size_for_index(vector->prime_index);
 assert(vector->prime_index >= 0 && vector->prime_index < sizeof(_ccv_sparse_prime) / sizeof(int));
 const size_t cell_size_aligned = (CCV_GET_DATA_TYPE_SIZE(mat->type) * CCV_GET_CHANNEL(mat->type) + 3) & -4;
 const size_t index_size = sizeof(ccv_sparse_matrix_index_t) + cell_size_aligned;
 const size_t cell_rnum = cell_size_aligned / sizeof(uint32_t);
 vector->index = (ccv_sparse_matrix_index_t*)ccrealloc(vector->index, index_size * new_size);
 uint8_t* const index = (uint8_t*)vector->index;
 memset(index + index_size * size, 0, index_size * (new_size - size));
 uint32_t i, h;
 for (i = 0; i < size; i++)
 {
  ccv_sparse_matrix_index_t* index_i = (ccv_sparse_matrix_index_t*)(index + index_size * i);
  index_i->ifbit = !!index_i->ifbit;
 }
 for (i = 0; i < size; i++)
 {
  ccv_sparse_matrix_index_t* index_i = (ccv_sparse_matrix_index_t*)(index + index_size * i);
  if (index_i->ifbit == 1)
  {
   index_i->ifbit = 0;

   uint32_t key = index_i->i;
   uint32_t* val = (uint32_t*)(index_i + 1);
   uint32_t k = 2;
   uint32_t idx = _ccv_sparse_matrix_index_for_hash(key, prime_index);
   for (; k < 255; ++idx, ++k)
   {
    if (idx >= new_size)
     idx = 0;
    ccv_sparse_matrix_index_t* index_idx = (ccv_sparse_matrix_index_t*)(index + index_size * idx);
    uint32_t j = index_idx->ifbit;
    if (!j)
    {
     index_idx->ifbit = k;
     index_idx->i = key;
     memcpy(index_idx + 1, val, cell_size_aligned);
     break;
    }
    if (k <= j)
     continue;
    index_idx->ifbit = k;
    uint32_t old_key = index_idx->i;
    index_idx->i = key;
    key = old_key;
    uint32_t* old_val = (uint32_t*)(index_idx + 1);
    for (h = 0; h < cell_rnum; h++)
    {
     uint32_t v = old_val[h];
     old_val[h] = val[h];
     val[h] = v;
    }
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
    ccv_sparse_matrix_index_t* index_idx = (ccv_sparse_matrix_index_t*)(index + index_size * idx);
    uint32_t j = index_idx->ifbit;
    if (!j)
    {
     index_idx->ifbit = k > 0xff ? 0xff : k;
     index_idx->i = key;
     memcpy(index_idx + 1, val, cell_size_aligned);
     break;
    }
    if (j == 0xff)
     j = _ccv_sparse_matrix_index_for_hash((index_idx->i + new_size - idx), prime_index) + 2;
    if (k <= j)
     continue;
    index_idx->ifbit = k > 0xff ? 0xff : k;
    uint32_t old_key = index_idx->i;
    index_idx->i = key;
    key = old_key;
    uint32_t* old_val = (uint32_t*)(index_idx + 1);
    for (h = 0; h < cell_rnum; h++)
    {
     uint32_t v = old_val[h];
     old_val[h] = val[h];
     val[h] = v;
    }
    if (j != 1)
     k = j;
    else {
     idx = _ccv_sparse_matrix_index_for_hash(key, prime_index) - 1;
     k = 1;
    }
   }
  }
 }
}
