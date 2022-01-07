
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 int MZ_ZIP_MAGIC_DATADESCRIPTOR ;
 scalar_t__ mz_stream_write_int64 (void*,scalar_t__) ;
 scalar_t__ mz_stream_write_uint32 (void*,int ) ;

__attribute__((used)) static int32_t mz_zip_entry_write_descriptor(void *stream, uint8_t zip64, uint32_t crc32, int64_t compressed_size, int64_t uncompressed_size)
{
    int32_t err = MZ_OK;

    err = mz_stream_write_uint32(stream, MZ_ZIP_MAGIC_DATADESCRIPTOR);
    if (err == MZ_OK)
        err = mz_stream_write_uint32(stream, crc32);


    if (err == MZ_OK)
    {

        if (!zip64)
            err = mz_stream_write_uint32(stream, (uint32_t)compressed_size);
        else
            err = mz_stream_write_int64(stream, compressed_size);
    }
    if (err == MZ_OK)
    {
        if (!zip64)
            err = mz_stream_write_uint32(stream, (uint32_t)uncompressed_size);
        else
            err = mz_stream_write_int64(stream, uncompressed_size);
    }

    return err;
}
