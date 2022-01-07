
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error; int handle; } ;
typedef TYPE_1__ mz_stream_posix ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_WRITE_ERROR ;
 int errno ;
 scalar_t__ ferror (int ) ;
 int fwrite (void const*,int,size_t,int ) ;

int32_t mz_stream_os_write(void *stream, const void *buf, int32_t size)
{
    mz_stream_posix *posix = (mz_stream_posix*)stream;
    int32_t written = (int32_t)fwrite(buf, 1, (size_t)size, posix->handle);
    if (written < size && ferror(posix->handle))
    {
        posix->error = errno;
        return MZ_WRITE_ERROR;
    }
    return written;
}
