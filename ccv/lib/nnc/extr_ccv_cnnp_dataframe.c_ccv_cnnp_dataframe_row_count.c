
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int row_count; } ;
typedef TYPE_1__ ccv_cnnp_dataframe_t ;



int ccv_cnnp_dataframe_row_count(ccv_cnnp_dataframe_t* const dataframe)
{
 return dataframe->row_count;
}
