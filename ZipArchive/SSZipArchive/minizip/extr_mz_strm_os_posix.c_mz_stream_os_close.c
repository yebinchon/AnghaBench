
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error; int * handle; } ;
typedef TYPE_1__ mz_stream_posix ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_CLOSE_ERROR ;
 scalar_t__ MZ_OK ;
 int errno ;
 scalar_t__ fclose (int *) ;

int32_t mz_stream_os_close(void *stream)
{
    mz_stream_posix *posix = (mz_stream_posix*)stream;
    int32_t closed = 0;
    if (posix->handle != ((void*)0))
    {
        closed = fclose(posix->handle);
        posix->handle = ((void*)0);
    }
    if (closed != 0)
    {
        posix->error = errno;
        return MZ_CLOSE_ERROR;
    }
    return MZ_OK;
}
