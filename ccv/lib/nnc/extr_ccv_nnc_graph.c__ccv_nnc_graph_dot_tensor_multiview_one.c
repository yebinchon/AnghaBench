
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_13__ {int kind; int repeat; } ;
typedef TYPE_3__ ccv_nnc_tensor_multiview_t ;
struct TYPE_14__ {size_t zone; } ;
typedef TYPE_4__ ccv_nnc_tensor_dot_t ;
struct TYPE_15__ {int* remap; int* rename_zone; TYPE_4__* dots; } ;
typedef TYPE_5__ ccv_nnc_tensor_dot_recovery_t ;
struct TYPE_12__ {int dim; } ;
struct TYPE_11__ {int u8; } ;
struct TYPE_16__ {int type; TYPE_2__ info; TYPE_1__ data; } ;
typedef int FILE ;


 size_t CCV_GET_DATA_TYPE_SIZE (int ) ;
 scalar_t__ CCV_IS_TENSOR_MULTIVIEW (TYPE_8__*) ;
 TYPE_8__** CCV_NNC_MULTIVIEW_DATA (TYPE_3__ const* const) ;
 int CCV_NNC_MULTIVIEW_K0N ;
 int CCV_NNC_MULTIVIEW_K1N ;
 size_t ccv_nnc_dimension_count (int ) ;
 int fprintf (int *,char*,int,...) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void _ccv_nnc_graph_dot_tensor_multiview_one(const ccv_nnc_tensor_multiview_t* const mv, const ccv_nnc_tensor_dot_recovery_t recovery, const int depth, int* tensor_index, FILE* out)
{
 const int count = mv->kind + mv->repeat;
 int i, j;
 fputs("|{", out);
 for (i = 0; i < count; i++)
  if (CCV_IS_TENSOR_MULTIVIEW(CCV_NNC_MULTIVIEW_DATA(mv)[i]))
  {
   fprintf(out, "{%d", i);
   if (mv->kind == CCV_NNC_MULTIVIEW_K0N || (mv->kind == CCV_NNC_MULTIVIEW_K1N && i > 0))
    fputc('*', out);
   _ccv_nnc_graph_dot_tensor_multiview_one((ccv_nnc_tensor_multiview_t*)CCV_NNC_MULTIVIEW_DATA(mv)[i], recovery, depth, tensor_index, out);
   if (i == count - 1)
    fputc('}', out);
   else
    fputs("}|", out);
  } else {
   fprintf(out, "{%d", i);
   if (mv->kind == CCV_NNC_MULTIVIEW_K0N || (mv->kind == CCV_NNC_MULTIVIEW_K1N && i > 0))
    fputc('*', out);
   const ccv_nnc_tensor_dot_t* const tensor_dot = recovery.dots + recovery.remap[*tensor_index];
   fprintf(out, "|zone%d", recovery.rename_zone[tensor_dot->zone]);
   for (j = 0; j < depth; j++)
    fputc('\'', out);
   uintptr_t aptr = (uintptr_t)CCV_NNC_MULTIVIEW_DATA(mv)[i]->data.u8;

   size_t dim_size = ccv_nnc_dimension_count(CCV_NNC_MULTIVIEW_DATA(mv)[i]->info.dim) * CCV_GET_DATA_TYPE_SIZE(CCV_NNC_MULTIVIEW_DATA(mv)[i]->type);

   fprintf(out, "|{%#010x|%#010x}", (uint32_t)aptr, (uint32_t)(aptr + dim_size - 1));
   ++(*tensor_index);
   if (i == count - 1)
    fputc('}', out);
   else
    fputs("}|", out);
  }
 fputc('}', out);
}
