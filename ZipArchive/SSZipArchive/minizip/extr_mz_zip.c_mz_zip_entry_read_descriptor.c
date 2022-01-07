
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_FORMAT_ERROR ;
 scalar_t__ MZ_OK ;
 scalar_t__ MZ_ZIP_MAGIC_DATADESCRIPTOR ;
 scalar_t__ mz_stream_read_int64 (void*,scalar_t__*) ;
 scalar_t__ mz_stream_read_uint32 (void*,scalar_t__*) ;

__attribute__((used)) static int32_t mz_zip_entry_read_descriptor(void *stream, uint8_t zip64, uint32_t *crc32, int64_t *compressed_size, int64_t *uncompressed_size)
{
    uint32_t value32 = 0;
    int64_t value64 = 0;
    int32_t err = MZ_OK;


    err = mz_stream_read_uint32(stream, &value32);
    if (value32 != MZ_ZIP_MAGIC_DATADESCRIPTOR)
        err = MZ_FORMAT_ERROR;
    if (err == MZ_OK)
        err = mz_stream_read_uint32(stream, &value32);
    if ((err == MZ_OK) && (crc32 != ((void*)0)))
        *crc32 = value32;
    if (err == MZ_OK)
    {

        if (!zip64)
        {
            err = mz_stream_read_uint32(stream, &value32);
            value64 = value32;
        }
        else
        {
            err = mz_stream_read_int64(stream, &value64);
            if (value64 < 0)
                err = MZ_FORMAT_ERROR;
        }
        if ((err == MZ_OK) && (compressed_size != ((void*)0)))
            *compressed_size = value64;
    }
    if (err == MZ_OK)
    {
        if (!zip64)
        {
            err = mz_stream_read_uint32(stream, &value32);
            value64 = value32;
        }
        else
        {
            err = mz_stream_read_int64(stream, &value64);
            if (value64 < 0)
                err = MZ_FORMAT_ERROR;
        }
        if ((err == MZ_OK) && (uncompressed_size != ((void*)0)))
            *uncompressed_size = value64;
    }

    return err;
}
