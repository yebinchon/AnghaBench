
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * emit_context; } ;
typedef TYPE_1__ ccv_nnc_stream_signal_t ;
typedef int ccv_nnc_stream_context_t ;



ccv_nnc_stream_context_t* ccv_nnc_stream_signal_get_emitter(const ccv_nnc_stream_signal_t* const signal)
{
 return signal->emit_context;
}
