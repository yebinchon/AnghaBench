
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {void* limit; void* size; int * buffer; } ;
typedef TYPE_1__ mz_stream_mem ;
typedef void* int32_t ;



void mz_stream_mem_set_buffer(void *stream, void *buf, int32_t size)
{
    mz_stream_mem *mem = (mz_stream_mem *)stream;
    mem->buffer = (uint8_t *)buf;
    mem->size = size;
    mem->limit = size;
}
