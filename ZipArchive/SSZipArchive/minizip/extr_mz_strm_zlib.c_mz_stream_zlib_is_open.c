
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initialized; } ;
typedef TYPE_1__ mz_stream_zlib ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_OPEN_ERROR ;

int32_t mz_stream_zlib_is_open(void *stream)
{
    mz_stream_zlib *zlib = (mz_stream_zlib *)stream;
    if (zlib->initialized != 1)
        return MZ_OPEN_ERROR;
    return MZ_OK;
}
