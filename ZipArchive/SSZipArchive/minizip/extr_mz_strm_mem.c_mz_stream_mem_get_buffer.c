
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int mz_stream_mem_get_buffer_at (void*,int ,void const**) ;

int32_t mz_stream_mem_get_buffer(void *stream, const void **buf)
{
    return mz_stream_mem_get_buffer_at(stream, 0, buf);
}
