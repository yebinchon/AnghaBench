
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ format; int* dim; } ;
typedef TYPE_4__ ccv_nnc_tensor_param_t ;
struct TYPE_13__ {int* begin; int* end; } ;
struct TYPE_12__ {int * dim; } ;
struct TYPE_16__ {TYPE_2__ border; TYPE_1__ stride; } ;
typedef TYPE_5__ ccv_nnc_hint_t ;
struct TYPE_14__ {int* dim; } ;
struct TYPE_17__ {TYPE_3__ size; } ;
typedef TYPE_6__ ccv_nnc_cmd_param_t ;


 int CCV_NNC_MAX_DIM ;
 int assert (int) ;
 int ccv_max (int,int ) ;
 int ccv_nnc_tensor_hw (TYPE_4__ const,int const) ;
 int ccv_nnc_tensor_nd (int*) ;

__attribute__((used)) static inline void ccv_nnc_hint_tensor_forward(const ccv_nnc_cmd_param_t cmd, const ccv_nnc_tensor_param_t a, const ccv_nnc_hint_t hint, ccv_nnc_tensor_param_t* b)
{
 int i;
 assert(a.format == b->format);
 const int nd = ccv_nnc_tensor_nd(a.dim);
 assert(nd == CCV_NNC_MAX_DIM + 1 || nd == CCV_NNC_MAX_DIM + 2);
 int hw = ccv_nnc_tensor_hw(a, nd);
 assert(hw >= 0);
 for (i = 0; i < CCV_NNC_MAX_DIM; i++)
 {
  int stride = ccv_max(1, hint.stride.dim[i]);
  b->dim[i + hw] = (a.dim[i + hw] + hint.border.begin[i] + hint.border.end[i] - cmd.size.dim[i]) / stride + 1;
 }
}
