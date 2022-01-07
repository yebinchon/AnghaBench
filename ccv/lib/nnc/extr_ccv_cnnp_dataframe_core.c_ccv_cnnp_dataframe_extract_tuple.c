
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_cnnp_dataframe_t ;


 int ccv_cnnp_dataframe_extract_value (int * const,int const,int const) ;

int ccv_cnnp_dataframe_extract_tuple(ccv_cnnp_dataframe_t* const dataframe, const int column_idx, const int index)
{
 return ccv_cnnp_dataframe_extract_value(dataframe, column_idx, index * sizeof(void*));
}
