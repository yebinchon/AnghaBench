
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 scalar_t__ mz_stream_write_uint16 (void*,int ) ;

int32_t mz_zip_extrafield_write(void *stream, uint16_t type, uint16_t length)
{
    int32_t err = MZ_OK;
    err = mz_stream_write_uint16(stream, type);
    if (err == MZ_OK)
        err = mz_stream_write_uint16(stream, length);
    return err;
}
