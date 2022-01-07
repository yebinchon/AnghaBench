
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error; int handle; } ;
typedef TYPE_1__ mz_stream_posix ;
typedef int int64_t ;


 int MZ_TELL_ERROR ;
 int errno ;
 int ftello64 (int ) ;

int64_t mz_stream_os_tell(void *stream)
{
    mz_stream_posix *posix = (mz_stream_posix*)stream;
    int64_t position = ftello64(posix->handle);
    if (position == -1)
    {
        posix->error = errno;
        return MZ_TELL_ERROR;
    }
    return position;
}
