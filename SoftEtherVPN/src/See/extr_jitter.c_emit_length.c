
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t bpf_pc; int cur_ip; int * refs; } ;
typedef TYPE_1__ binary_stream ;
typedef int ULONG ;
typedef scalar_t__ UINT ;



void emit_length(binary_stream *stream, ULONG value, UINT len)
{
 (stream->refs)[stream->bpf_pc]+=len;
 stream->cur_ip+=len;
}
