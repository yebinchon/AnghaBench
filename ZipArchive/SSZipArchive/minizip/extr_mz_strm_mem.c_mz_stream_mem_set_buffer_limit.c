
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int limit; } ;
typedef TYPE_1__ mz_stream_mem ;
typedef int int32_t ;



void mz_stream_mem_set_buffer_limit(void *stream, int32_t limit)
{
    mz_stream_mem *mem = (mz_stream_mem *)stream;
    mem->limit = limit;
}
