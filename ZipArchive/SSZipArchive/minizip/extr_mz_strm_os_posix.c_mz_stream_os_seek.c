
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error; int handle; } ;
typedef TYPE_1__ mz_stream_posix ;
typedef int int64_t ;
typedef int int32_t ;


 int MZ_OK ;


 int MZ_SEEK_ERROR ;

 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 int errno ;
 scalar_t__ fseeko64 (int ,int ,int) ;

int32_t mz_stream_os_seek(void *stream, int64_t offset, int32_t origin)
{
    mz_stream_posix *posix = (mz_stream_posix*)stream;
    int32_t fseek_origin = 0;

    switch (origin)
    {
        case 130:
            fseek_origin = SEEK_CUR;
            break;
        case 129:
            fseek_origin = SEEK_END;
            break;
        case 128:
            fseek_origin = SEEK_SET;
            break;
        default:
            return MZ_SEEK_ERROR;
    }

    if (fseeko64(posix->handle, offset, fseek_origin) != 0)
    {
        posix->error = errno;
        return MZ_SEEK_ERROR;
    }

    return MZ_OK;
}
