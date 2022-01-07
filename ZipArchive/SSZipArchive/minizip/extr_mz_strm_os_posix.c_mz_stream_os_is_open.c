
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * handle; } ;
typedef TYPE_1__ mz_stream_posix ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_OPEN_ERROR ;

int32_t mz_stream_os_is_open(void *stream)
{
    mz_stream_posix *posix = (mz_stream_posix*)stream;
    if (posix->handle == ((void*)0))
        return MZ_OPEN_ERROR;
    return MZ_OK;
}
