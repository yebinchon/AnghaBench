
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* int32_t ;


 char const* MZ_OK ;
 int MZ_UNUSED (char const*) ;

int32_t mz_stream_raw_open(void *stream, const char *path, int32_t mode)
{
    MZ_UNUSED(stream);
    MZ_UNUSED(path);
    MZ_UNUSED(mode);

    return MZ_OK;
}
