
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ position; scalar_t__ limit; scalar_t__ size; int mode; } ;
typedef TYPE_1__ mz_stream_mem ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_OPEN_MODE_CREATE ;


 int MZ_SEEK_ERROR ;

 int mz_stream_mem_set_size (void*,int) ;

int32_t mz_stream_mem_seek(void *stream, int64_t offset, int32_t origin)
{
    mz_stream_mem *mem = (mz_stream_mem *)stream;
    int64_t new_pos = 0;
    int32_t err = MZ_OK;

    switch (origin)
    {
        case 130:
            new_pos = mem->position + offset;
            break;
        case 129:
            new_pos = mem->limit + offset;
            break;
        case 128:
            new_pos = offset;
            break;
        default:
            return MZ_SEEK_ERROR;
    }

    if (new_pos > mem->size)
    {
        if ((mem->mode & MZ_OPEN_MODE_CREATE) == 0)
            return MZ_SEEK_ERROR;

        err = mz_stream_mem_set_size(stream, (int32_t)new_pos);
        if (err != MZ_OK)
            return err;
    }
    else if (new_pos < 0)
    {
        return MZ_SEEK_ERROR;
    }

    mem->position = (int32_t)new_pos;
    return MZ_OK;
}
