
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int off_t ;
struct TYPE_9__ {int * u8; } ;
struct TYPE_10__ {int datatype; int dim; } ;
struct TYPE_11__ {int off; TYPE_2__ data; int inc; TYPE_3__ info; } ;
typedef TYPE_4__ ccv_nnc_tensor_view_t ;
struct TYPE_8__ {int * u8; } ;
struct TYPE_12__ {TYPE_1__ data; } ;
typedef TYPE_5__ ccv_nnc_tensor_t ;


 int CCV_NNC_MAX_DIM_ALLOC ;
 int ccv_nnc_tensor_view_offset (int ,int ,int const*) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static inline void _ccv_nnc_tensor_view_set(ccv_nnc_tensor_view_t* const tv, const ccv_nnc_tensor_t* const tensor, const int dim[CCV_NNC_MAX_DIM_ALLOC], const int ofs[CCV_NNC_MAX_DIM_ALLOC], const int inc[CCV_NNC_MAX_DIM_ALLOC])
{
 memcpy(tv->inc, inc, sizeof(int) * CCV_NNC_MAX_DIM_ALLOC);
 memcpy(tv->info.dim, dim, sizeof(int) * CCV_NNC_MAX_DIM_ALLOC);
 uint8_t* const p = tensor->data.u8;
 const off_t off = tv->off = ccv_nnc_tensor_view_offset(tv->info.datatype, tv->inc, ofs);
 tv->data.u8 = p + off;
}
