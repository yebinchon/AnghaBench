
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* int64_t ;
typedef void* int32_t ;


 void* MZ_SEEK_ERROR ;
 int MZ_UNUSED (void*) ;

int32_t mz_stream_zlib_seek(void *stream, int64_t offset, int32_t origin)
{
    MZ_UNUSED(stream);
    MZ_UNUSED(offset);
    MZ_UNUSED(origin);

    return MZ_SEEK_ERROR;
}
