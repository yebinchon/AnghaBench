
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int context; int (* context_deinit ) (int ) ;scalar_t__ iter; } ;
typedef TYPE_1__ ccv_cnnp_dataframe_reducer_t ;


 int ccfree (TYPE_1__* const) ;
 int ccv_cnnp_dataframe_iter_free (scalar_t__) ;
 int stub1 (int ) ;

__attribute__((used)) static void _ccv_cnnp_reducer_deinit(void* const context)
{
 ccv_cnnp_dataframe_reducer_t* const reducer = (ccv_cnnp_dataframe_reducer_t*)context;
 if (reducer->iter)
  ccv_cnnp_dataframe_iter_free(reducer->iter);
 if (reducer->context_deinit)
  reducer->context_deinit(reducer->context);
 ccfree(reducer);
}
