
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int context; int (* data_deinit ) (void* const,int ) ;} ;
typedef TYPE_1__ ccv_cnnp_dataframe_reducer_t ;


 int assert (int (*) (void* const,int )) ;
 int stub1 (void* const,int ) ;

__attribute__((used)) static void _ccv_cnnp_reducer_data_deinit(void* const data, void* const context)
{
 ccv_cnnp_dataframe_reducer_t* const reducer = (ccv_cnnp_dataframe_reducer_t*)context;
 assert(reducer->data_deinit);
 reducer->data_deinit(data, reducer->context);
}
