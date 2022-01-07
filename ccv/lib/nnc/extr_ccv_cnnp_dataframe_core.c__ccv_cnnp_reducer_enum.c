
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ccv_nnc_stream_context_t ;
struct TYPE_2__ {int iter_idx; int const batch_size; int context; scalar_t__ batch_data; int (* reduce ) (scalar_t__,int,void** const,int ,int * const) ;int * iter; int column_idx; int dataframe; } ;
typedef TYPE_1__ ccv_cnnp_dataframe_reducer_t ;
typedef int ccv_cnnp_dataframe_iter_t ;


 int * ccv_cnnp_dataframe_iter_new (int ,int *,int) ;
 scalar_t__ ccv_cnnp_dataframe_iter_next (int * const,scalar_t__,int,int * const) ;
 int ccv_cnnp_dataframe_iter_prefetch (int * const,int const,int * const) ;
 int ccv_cnnp_dataframe_iter_set_cursor (int * const,int const) ;
 int stub1 (scalar_t__,int,void** const,int ,int * const) ;

__attribute__((used)) static void _ccv_cnnp_reducer_enum(const int column_idx, const int* const row_idxs, const int row_size, void** const data, void* const context, ccv_nnc_stream_context_t* const stream_context)
{
 ccv_cnnp_dataframe_reducer_t* const reducer = (ccv_cnnp_dataframe_reducer_t*)context;
 if (!reducer->iter)
 {
  reducer->iter = ccv_cnnp_dataframe_iter_new(reducer->dataframe, &reducer->column_idx, 1);
  reducer->iter_idx = -1;
 }
 ccv_cnnp_dataframe_iter_t* const iter = reducer->iter;
 int i, j;
 for (i = 0; i < row_size; i++)
 {
  if (reducer->iter_idx + 1 != row_idxs[i])
   ccv_cnnp_dataframe_iter_set_cursor(iter, row_idxs[i] * reducer->batch_size);
  reducer->iter_idx = row_idxs[i];
  ccv_cnnp_dataframe_iter_prefetch(iter, reducer->batch_size, stream_context);
  for (j = 0; j < reducer->batch_size; j++)
   if (0 != ccv_cnnp_dataframe_iter_next(iter, reducer->batch_data + j, 1, stream_context))
    break;
  reducer->reduce(reducer->batch_data, j, data + i, reducer->context, stream_context);
 }
}
