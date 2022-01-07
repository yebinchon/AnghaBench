
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* dim; } ;
struct TYPE_6__ {int* inc; int* ofs; TYPE_1__ info; } ;
typedef TYPE_2__ ccv_nnc_tensor_symbol_info_t ;


 int CCV_NNC_MAX_DIM_ALLOC ;
 scalar_t__ ccv_max (int const,int) ;
 scalar_t__ ccv_min (int const,int) ;
 scalar_t__ memcmp (int const*,int*,int) ;

int ccv_nnc_over_tensor_symbol_aliases(const ccv_nnc_tensor_symbol_info_t* const tensor_a, const ccv_nnc_tensor_symbol_info_t* const tensor_b)
{
 int i;
 const int* inc = tensor_a->inc;

 if (memcmp(inc, tensor_b->inc, sizeof(int) * CCV_NNC_MAX_DIM_ALLOC) != 0)
  return 1;
 const int* ofs = tensor_a->ofs;
 const int* dim = tensor_a->info.dim;
 for (i = 0; i < CCV_NNC_MAX_DIM_ALLOC && dim[i] && tensor_b->info.dim[i]; i++)
  if (ccv_min(ofs[i] + dim[i], tensor_b->ofs[i] + tensor_b->info.dim[i]) <= ccv_max(ofs[i], tensor_b->ofs[i]))
   return 0;
 return 1;
}
