
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int position; } ;
typedef TYPE_1__ mz_stream_mem ;
typedef int int64_t ;



int64_t mz_stream_mem_tell(void *stream)
{
    mz_stream_mem *mem = (mz_stream_mem *)stream;
    return mem->position;
}
