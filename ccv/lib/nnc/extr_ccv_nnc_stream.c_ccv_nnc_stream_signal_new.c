
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; scalar_t__ emit_context; } ;
typedef TYPE_1__ ccv_nnc_stream_signal_t ;


 scalar_t__ CCV_STREAM_CONTEXT_GPU ;
 scalar_t__ CCV_STREAM_GET_CONTEXT (int const) ;
 scalar_t__ ccmalloc (int) ;
 TYPE_1__* ccv_nnc_init_stream_signal (TYPE_1__* const) ;

ccv_nnc_stream_signal_t* ccv_nnc_stream_signal_new(const int type)
{
 ccv_nnc_stream_signal_t* const signal = (ccv_nnc_stream_signal_t*)ccmalloc(sizeof(ccv_nnc_stream_signal_t));
 signal->type = type;
 signal->emit_context = 0;




 return signal;
}
