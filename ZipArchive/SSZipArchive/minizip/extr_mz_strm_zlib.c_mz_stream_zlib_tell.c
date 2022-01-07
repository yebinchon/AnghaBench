
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int MZ_TELL_ERROR ;
 int MZ_UNUSED (void*) ;

int64_t mz_stream_zlib_tell(void *stream)
{
    MZ_UNUSED(stream);

    return MZ_TELL_ERROR;
}
