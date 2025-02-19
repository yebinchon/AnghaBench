
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 scalar_t__ mz_stream_read_value (void*,scalar_t__*,int) ;

int32_t mz_stream_read_uint8(void *stream, uint8_t *value)
{
    int32_t err = MZ_OK;
    uint64_t value64 = 0;

    *value = 0;
    err = mz_stream_read_value(stream, &value64, sizeof(uint8_t));
    if (err == MZ_OK)
        *value = (uint8_t)value64;
    return err;
}
