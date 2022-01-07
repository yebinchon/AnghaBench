
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; void* buffer; } ;
typedef TYPE_1__ mz_stream_mem ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_SEEK_ERROR ;

int32_t mz_stream_mem_get_buffer_at(void *stream, int64_t position, const void **buf)
{
    mz_stream_mem *mem = (mz_stream_mem *)stream;
    if (buf == ((void*)0) || position < 0 || mem->size < position || mem->buffer == ((void*)0))
        return MZ_SEEK_ERROR;
    *buf = mem->buffer + position;
    return MZ_OK;
}
