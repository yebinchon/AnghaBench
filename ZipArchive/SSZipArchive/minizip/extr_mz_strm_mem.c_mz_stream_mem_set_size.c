
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ size; int * buffer; } ;
typedef TYPE_1__ mz_stream_mem ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_ALLOC (int ) ;
 scalar_t__ MZ_BUF_ERROR ;
 int MZ_FREE (int *) ;
 scalar_t__ MZ_OK ;
 int memcpy (int *,int *,scalar_t__) ;

__attribute__((used)) static int32_t mz_stream_mem_set_size(void *stream, int32_t size)
{
    mz_stream_mem *mem = (mz_stream_mem *)stream;
    int32_t new_size = size;
    uint8_t *new_buf = ((void*)0);


    new_buf = (uint8_t *)MZ_ALLOC((uint32_t)new_size);
    if (new_buf == ((void*)0))
        return MZ_BUF_ERROR;

    if (mem->buffer)
    {
        memcpy(new_buf, mem->buffer, mem->size);
        MZ_FREE(mem->buffer);
    }

    mem->buffer = new_buf;
    mem->size = new_size;
    return MZ_OK;
}
