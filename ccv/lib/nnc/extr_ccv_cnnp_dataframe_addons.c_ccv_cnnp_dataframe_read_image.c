
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef int ccv_cnnp_dataframe_t ;


 int COLUMN_ID_LIST (int const) ;
 int _ccv_cnnp_image_deinit ;
 int _ccv_cnnp_read_image ;
 int ccv_cnnp_dataframe_map (int * const,int ,int ,int ,int ,void*,int ) ;

int ccv_cnnp_dataframe_read_image(ccv_cnnp_dataframe_t* const dataframe, const int column_idx, const off_t structof)
{
 return ccv_cnnp_dataframe_map(dataframe, _ccv_cnnp_read_image, 0, _ccv_cnnp_image_deinit, COLUMN_ID_LIST(column_idx), (void*)(uintptr_t)structof, 0);
}
