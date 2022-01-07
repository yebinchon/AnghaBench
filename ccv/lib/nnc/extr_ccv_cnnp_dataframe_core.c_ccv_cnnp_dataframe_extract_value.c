
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef int ccv_cnnp_dataframe_t ;


 int _ccv_cnnp_extract_value ;
 int ccv_cnnp_dataframe_map (int * const,int ,int ,int ,int const*,int,void*,int ) ;

int ccv_cnnp_dataframe_extract_value(ccv_cnnp_dataframe_t* const dataframe, const int column_idx, const off_t offset)
{
 return ccv_cnnp_dataframe_map(dataframe, _ccv_cnnp_extract_value, 0, 0, &column_idx, 1, (void*)(uintptr_t)offset, 0);
}
