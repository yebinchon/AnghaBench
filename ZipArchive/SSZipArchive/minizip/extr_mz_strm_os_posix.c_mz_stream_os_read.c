
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error; int handle; } ;
typedef TYPE_1__ mz_stream_posix ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_READ_ERROR ;
 int errno ;
 scalar_t__ ferror (int ) ;
 int fread (void*,int,size_t,int ) ;

int32_t mz_stream_os_read(void *stream, void *buf, int32_t size)
{
    mz_stream_posix *posix = (mz_stream_posix*)stream;
    int32_t read = (int32_t)fread(buf, 1, (size_t)size, posix->handle);
    if (read < size && ferror(posix->handle))
    {
        posix->error = errno;
        return MZ_READ_ERROR;
    }
    return read;
}
