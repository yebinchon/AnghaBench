
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int d; } ;
typedef TYPE_1__ ccv_nnc_tensor_ref_t ;
struct TYPE_5__ {int c; int * const ref_version; } ;
typedef TYPE_2__ ccv_nnc_autograd_tensor_version_t ;
typedef int ccv_nnc_autograd_tensor_symbol_t ;
typedef int ccv_array_t ;


 int assert (int * const) ;
 scalar_t__ ccv_array_get (int * const,int ) ;

__attribute__((used)) static ccv_nnc_autograd_tensor_symbol_t* _ccv_nnc_autograd_tensor_symbol_from_tensor_version(ccv_array_t* const autograd_tensor_symbols, const ccv_nnc_autograd_tensor_version_t* const tensor_ver)
{
 assert(tensor_ver->ref_version);
 const ccv_nnc_tensor_ref_t* const tensor_ref = (ccv_nnc_tensor_ref_t*)ccv_array_get(tensor_ver->ref_version, tensor_ver->c);
 return (ccv_nnc_autograd_tensor_symbol_t*)ccv_array_get(autograd_tensor_symbols, tensor_ref->d);
}
