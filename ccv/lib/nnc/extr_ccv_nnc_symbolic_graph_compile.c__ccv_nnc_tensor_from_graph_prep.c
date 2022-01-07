
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_nnc_tensor_t ;
struct TYPE_5__ {TYPE_1__* tensor_arena; int while_count_tensor; struct TYPE_5__* p; } ;
typedef TYPE_2__ ccv_nnc_symbolic_graph_prep_t ;
struct TYPE_4__ {int tensor_metadata; int ** vt_tensors; } ;


 int CCV_NNC_DECODE_WHILE_COUNT_SYMBOL (int const) ;
 int CCV_NNC_IS_WHILE_COUNT_TENSOR_SYMBOL (int const) ;
 int const CCV_NNC_NO_TENSOR_SYMBOL ;
 scalar_t__ _ccv_nnc_tensor_metadata_get (int ,int) ;
 int assert (int ) ;

__attribute__((used)) static ccv_nnc_tensor_t* _ccv_nnc_tensor_from_graph_prep(const ccv_nnc_symbolic_graph_prep_t* const graph_prep, const int symbol)
{
 if (symbol >= 0)
  return graph_prep->tensor_arena->vt_tensors[symbol];
 if (symbol == CCV_NNC_NO_TENSOR_SYMBOL)
  return 0;
 assert(CCV_NNC_IS_WHILE_COUNT_TENSOR_SYMBOL(symbol));
 const ccv_nnc_symbolic_graph_prep_t* prep = graph_prep;
 int i;
 const int d = CCV_NNC_DECODE_WHILE_COUNT_SYMBOL(symbol);
 for (i = 0; i < d; i++)
  prep = prep->p;
 assert(prep->while_count_tensor);
 return (ccv_nnc_tensor_t*)_ccv_nnc_tensor_metadata_get(prep->tensor_arena->tensor_metadata, (0 << 1) + 1);
}
