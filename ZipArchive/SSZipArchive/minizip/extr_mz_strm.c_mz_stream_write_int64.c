
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;


 int mz_stream_write_value (void*,int ,int) ;

int32_t mz_stream_write_int64(void *stream, int64_t value)
{
    return mz_stream_write_value(stream, (uint64_t)value, sizeof(uint64_t));
}
