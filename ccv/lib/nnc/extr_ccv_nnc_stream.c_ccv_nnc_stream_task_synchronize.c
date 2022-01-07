
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_nnc_stream_task_t ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ ccv_nnc_stream_context_t ;


 scalar_t__ CCV_STREAM_CONTEXT_GPU ;
 scalar_t__ CCV_STREAM_GET_CONTEXT (int ) ;
 int ccv_nnc_stream_compat_task_synchronize (int * const,TYPE_1__* const) ;

void ccv_nnc_stream_task_synchronize(ccv_nnc_stream_task_t* const self, ccv_nnc_stream_context_t* const stream)
{
 if (!stream)
  return;




}
