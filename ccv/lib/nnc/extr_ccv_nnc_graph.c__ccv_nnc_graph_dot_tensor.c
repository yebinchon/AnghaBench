
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int* inc; } ;
typedef TYPE_3__ ccv_nnc_tensor_view_t ;
struct TYPE_8__ {int* dim; int type; } ;
struct TYPE_7__ {int u8; } ;
struct TYPE_10__ {TYPE_2__ info; int type; TYPE_1__ data; } ;
typedef TYPE_4__ ccv_nnc_tensor_t ;
typedef int FILE ;


 int const CCV_GET_DATA_TYPE_SIZE (int ) ;
 scalar_t__ CCV_GET_TAPE_ALLOC (int ) ;
 int CCV_IS_TENSOR_VIEW (TYPE_4__ const* const) ;
 int const CCV_NNC_LONG_DOT_GRAPH ;
 int CCV_NNC_MAX_DIM_ALLOC ;
 int CCV_TENSOR_GET_DEVICE_ID (int ) ;
 int const ccv_nnc_dimension_count (int const*) ;
 int fprintf (int *,char*,int const,...) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void _ccv_nnc_graph_dot_tensor(const int index, const ccv_nnc_tensor_t* const tensor, const int zone, const int flags, const int depth, FILE* out)
{

 if (flags == CCV_NNC_LONG_DOT_GRAPH)
  fputc('{', out);
 const int is_tensor_view = CCV_IS_TENSOR_VIEW(tensor);
 if (is_tensor_view)
  fprintf(out, "tensorview%d", index);
 else
  fprintf(out, "tensor%d", index);
 int i;
 for (i = 0; i < depth; i++)
  fputc('\'', out);
 if (CCV_GET_TAPE_ALLOC(tensor->type))
  fputs(" (t)", out);
 if (flags == CCV_NNC_LONG_DOT_GRAPH)
 {
  const int device_id = CCV_TENSOR_GET_DEVICE_ID(tensor->info.type);
  fprintf(out, "|d%d|zone%d", device_id, zone);
  for (i = 0; i < depth; i++)
   fputc('\'', out);
  uintptr_t aptr = (uintptr_t)tensor->data.u8;
  const int* ainc = is_tensor_view ? ((ccv_nnc_tensor_view_t*)(tensor))->inc : tensor->info.dim;

  size_t ainc_size = (ccv_nnc_dimension_count(ainc) - ainc[0] + tensor->info.dim[0]) * CCV_GET_DATA_TYPE_SIZE(tensor->type);

  fprintf(out, "|{%#010x|%#010x}|%d", (uint32_t)aptr, (uint32_t)(aptr + ainc_size - 1), tensor->info.dim[0]);
  for (i = 1; i < CCV_NNC_MAX_DIM_ALLOC && tensor->info.dim[i]; i++)
   fprintf(out, "x%d", tensor->info.dim[i]);
  fputc('}', out);
 }
}
