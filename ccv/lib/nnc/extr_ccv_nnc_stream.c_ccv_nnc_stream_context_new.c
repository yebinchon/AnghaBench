
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int signal_container; } ;
struct TYPE_4__ {scalar_t__ workspace; scalar_t__ workspace_size; TYPE_1__ super; } ;
typedef TYPE_2__ ccv_nnc_stream_cpu_t ;
typedef int ccv_nnc_stream_context_t ;


 scalar_t__ CCV_STREAM_CONTEXT_GPU ;
 scalar_t__ CCV_STREAM_GET_CONTEXT (int const) ;
 scalar_t__ cccalloc (int,int) ;
 int * ccv_nnc_init_stream_context (int *) ;
 int kh_init (int ) ;
 int signal_container ;

ccv_nnc_stream_context_t* ccv_nnc_stream_context_new(const int type)
{
 ccv_nnc_stream_cpu_t* const stream_cpu = (ccv_nnc_stream_cpu_t*)cccalloc(1, sizeof(ccv_nnc_stream_cpu_t));
 stream_cpu->super.type = type;
 stream_cpu->super.signal_container = kh_init(signal_container);
 stream_cpu->workspace_size = 0;
 stream_cpu->workspace = 0;




 return (ccv_nnc_stream_context_t*)stream_cpu;
}
