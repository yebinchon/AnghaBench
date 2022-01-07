
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error; } ;
typedef TYPE_1__ mz_stream_posix ;
typedef int int32_t ;



int32_t mz_stream_os_error(void *stream)
{
    mz_stream_posix *posix = (mz_stream_posix*)stream;
    return posix->error;
}
