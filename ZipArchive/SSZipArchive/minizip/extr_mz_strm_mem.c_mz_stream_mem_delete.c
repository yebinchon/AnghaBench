
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; struct TYPE_3__* buffer; } ;
typedef TYPE_1__ mz_stream_mem ;


 int MZ_FREE (TYPE_1__*) ;
 int MZ_OPEN_MODE_CREATE ;

void mz_stream_mem_delete(void **stream)
{
    mz_stream_mem *mem = ((void*)0);
    if (stream == ((void*)0))
        return;
    mem = (mz_stream_mem *)*stream;
    if (mem != ((void*)0))
    {
        if ((mem->mode & MZ_OPEN_MODE_CREATE) && (mem->buffer != ((void*)0)))
            MZ_FREE(mem->buffer);
        MZ_FREE(mem);
    }
    *stream = ((void*)0);
}
