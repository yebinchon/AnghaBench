
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {int range; int datatype; int format; float onval; float offval; int structof; } ;
typedef TYPE_1__ ccv_cnnp_one_hot_context_t ;
typedef int ccv_cnnp_dataframe_t ;
typedef int ccv_cnnp_column_data_context_deinit_f ;


 int const CCV_16F ;
 int const CCV_32F ;
 int COLUMN_ID_LIST (int const) ;
 int _ccv_cnnp_one_hot ;
 int _ccv_cnnp_tensor_deinit ;
 int assert (int) ;
 scalar_t__ ccfree ;
 scalar_t__ ccmalloc (int) ;
 int ccv_cnnp_dataframe_map (int * const,int ,int ,int ,int ,TYPE_1__* const,int ) ;

int ccv_cnnp_dataframe_one_hot(ccv_cnnp_dataframe_t* const dataframe, const int column_idx, const off_t structof, const int range, const float onval, const float offval, const int datatype, const int format)
{
 assert(datatype == CCV_32F || datatype == CCV_16F);
 ccv_cnnp_one_hot_context_t* const one_hot = (ccv_cnnp_one_hot_context_t*)ccmalloc(sizeof(ccv_cnnp_one_hot_context_t));
 one_hot->range = range;
 one_hot->datatype = datatype;
 one_hot->format = format;
 one_hot->onval = onval;
 one_hot->offval = offval;
 one_hot->structof = structof;
 return ccv_cnnp_dataframe_map(dataframe, _ccv_cnnp_one_hot, 0, _ccv_cnnp_tensor_deinit, COLUMN_ID_LIST(column_idx), one_hot, (ccv_cnnp_column_data_context_deinit_f)ccfree);
}
