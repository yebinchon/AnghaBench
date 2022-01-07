
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; scalar_t__ position; scalar_t__ limit; scalar_t__ buffer; } ;
typedef TYPE_1__ mz_stream_mem ;
typedef scalar_t__ int32_t ;


 int memcpy (void*,scalar_t__,scalar_t__) ;

int32_t mz_stream_mem_read(void *stream, void *buf, int32_t size)
{
    mz_stream_mem *mem = (mz_stream_mem *)stream;

    if (size > mem->size - mem->position)
        size = mem->size - mem->position;
    if (mem->position + size > mem->limit)
        size = mem->limit - mem->position;

    if (size <= 0)
        return 0;

    memcpy(buf, mem->buffer + mem->position, size);
    mem->position += size;

    return size;
}
