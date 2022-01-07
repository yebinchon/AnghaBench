
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
typedef TYPE_1__ ccv_cnnp_dataframe_tuple_t ;
typedef int ccv_cnnp_dataframe_t ;


 scalar_t__ ccv_cnnp_dataframe_column_context (int const* const,int const) ;

int ccv_cnnp_dataframe_tuple_size(const ccv_cnnp_dataframe_t* const dataframe, const int column_idx)
{
 const ccv_cnnp_dataframe_tuple_t* const tuple = (ccv_cnnp_dataframe_tuple_t*)ccv_cnnp_dataframe_column_context(dataframe, column_idx);
 return tuple->size;
}
