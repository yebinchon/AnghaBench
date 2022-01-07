
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ccv_cnnp_dataframe_t ;
struct TYPE_5__ {TYPE_2__* const context; int data_enum; } ;
typedef TYPE_1__ ccv_cnnp_column_data_t ;
struct TYPE_6__ {int rnum; } ;
typedef TYPE_2__ ccv_array_t ;


 int _ccv_cnnp_array_enum ;
 int * ccv_cnnp_dataframe_new (TYPE_1__ const*,int,int ) ;

ccv_cnnp_dataframe_t* ccv_cnnp_dataframe_from_array_new(ccv_array_t* const array)
{
 const ccv_cnnp_column_data_t array_column_data = {
  .data_enum = _ccv_cnnp_array_enum,
  .context = array
 };
 return ccv_cnnp_dataframe_new(&array_column_data, 1, array->rnum);
}
