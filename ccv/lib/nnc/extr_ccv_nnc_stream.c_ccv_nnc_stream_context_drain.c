
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ workspace_size; scalar_t__ workspace; } ;
typedef TYPE_1__ ccv_nnc_stream_cpu_t ;
typedef int ccv_nnc_stream_context_t ;


 int ccfree (scalar_t__) ;
 TYPE_1__ ccv_nnc_per_thread_stream_cpu ;
 int ccv_nnc_stream_compat_drain (int * const) ;

void ccv_nnc_stream_context_drain(ccv_nnc_stream_context_t* const stream_context)
{



 ccv_nnc_stream_cpu_t* stream_cpu = (ccv_nnc_stream_cpu_t*)stream_context;
 if (!stream_cpu)
  stream_cpu = &ccv_nnc_per_thread_stream_cpu;
 if (stream_cpu->workspace)
 {
  ccfree(stream_cpu->workspace);
  stream_cpu->workspace = 0;
  stream_cpu->workspace_size = 0;
 }

}
