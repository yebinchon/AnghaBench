
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int32_t ;


 int mz_stream_read_value (void*,int *,int) ;

int32_t mz_stream_read_uint64(void *stream, uint64_t *value)
{
    return mz_stream_read_value(stream, value, sizeof(uint64_t));
}
