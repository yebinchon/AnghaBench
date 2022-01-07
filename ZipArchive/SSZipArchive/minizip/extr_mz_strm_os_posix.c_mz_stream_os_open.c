
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error; int * handle; } ;
typedef TYPE_1__ mz_stream_posix ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_OPEN_ERROR ;
 int MZ_OPEN_MODE_APPEND ;
 int MZ_OPEN_MODE_CREATE ;
 int MZ_OPEN_MODE_READ ;
 int MZ_OPEN_MODE_READWRITE ;
 int MZ_PARAM_ERROR ;
 int MZ_SEEK_END ;
 int errno ;
 int * fopen64 (char const*,char const*) ;
 int mz_stream_os_seek (void*,int ,int ) ;

int32_t mz_stream_os_open(void *stream, const char *path, int32_t mode)
{
    mz_stream_posix *posix = (mz_stream_posix *)stream;
    const char *mode_fopen = ((void*)0);

    if (path == ((void*)0))
        return MZ_PARAM_ERROR;

    if ((mode & MZ_OPEN_MODE_READWRITE) == MZ_OPEN_MODE_READ)
        mode_fopen = "rb";
    else if (mode & MZ_OPEN_MODE_APPEND)
        mode_fopen = "r+b";
    else if (mode & MZ_OPEN_MODE_CREATE)
        mode_fopen = "wb";
    else
        return MZ_OPEN_ERROR;

    posix->handle = fopen64(path, mode_fopen);
    if (posix->handle == ((void*)0))
    {
        posix->error = errno;
        return MZ_OPEN_ERROR;
    }

    if (mode & MZ_OPEN_MODE_APPEND)
        return mz_stream_os_seek(stream, 0, MZ_SEEK_END);

    return MZ_OK;
}
