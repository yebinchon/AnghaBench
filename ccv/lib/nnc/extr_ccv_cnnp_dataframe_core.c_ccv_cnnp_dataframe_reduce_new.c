
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_cnnp_dataframe_t ;
struct TYPE_4__ {int column_idx; int batch_size; void* context; int context_deinit; int data_deinit; scalar_t__ iter; int * dataframe; int reduce; } ;
typedef TYPE_1__ ccv_cnnp_dataframe_reducer_t ;
struct TYPE_5__ {int context_deinit; TYPE_1__* const context; int data_deinit; int data_enum; } ;
typedef TYPE_2__ ccv_cnnp_column_data_t ;
typedef int ccv_cnnp_column_data_reduce_f ;
typedef int ccv_cnnp_column_data_deinit_f ;
typedef int ccv_cnnp_column_data_context_deinit_f ;


 int _ccv_cnnp_reducer_data_deinit ;
 int _ccv_cnnp_reducer_deinit ;
 int _ccv_cnnp_reducer_enum ;
 int assert (int) ;
 scalar_t__ ccmalloc (int) ;
 int * ccv_cnnp_dataframe_new (TYPE_2__*,int,int const) ;
 int const ccv_cnnp_dataframe_row_count (int * const) ;

ccv_cnnp_dataframe_t* ccv_cnnp_dataframe_reduce_new(ccv_cnnp_dataframe_t* const dataframe, ccv_cnnp_column_data_reduce_f reduce, ccv_cnnp_column_data_deinit_f data_deinit, const int column_idx, const int batch_size, void* const context, ccv_cnnp_column_data_context_deinit_f context_deinit)
{
 assert(batch_size > 0);
 ccv_cnnp_dataframe_reducer_t* const reducer = (ccv_cnnp_dataframe_reducer_t*)ccmalloc(sizeof(ccv_cnnp_dataframe_reducer_t) + sizeof(void*) * (batch_size - 1));
 reducer->column_idx = column_idx;
 reducer->batch_size = batch_size;
 reducer->reduce = reduce;
 reducer->dataframe = dataframe;
 reducer->iter = 0;
 reducer->data_deinit = data_deinit;
 reducer->context = context;
 reducer->context_deinit = context_deinit;
 ccv_cnnp_column_data_t reduce_column = {
  .data_enum = _ccv_cnnp_reducer_enum,
  .data_deinit = data_deinit ? _ccv_cnnp_reducer_data_deinit : 0,
  .context = reducer,
  .context_deinit = _ccv_cnnp_reducer_deinit,
 };
 return ccv_cnnp_dataframe_new(&reduce_column, 1, (ccv_cnnp_dataframe_row_count(dataframe) + batch_size - 1) / batch_size);
}
