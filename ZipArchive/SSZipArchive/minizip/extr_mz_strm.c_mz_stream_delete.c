
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* vtbl; } ;
typedef TYPE_2__ mz_stream ;
struct TYPE_3__ {int (* destroy ) (void**) ;} ;


 int stub1 (void**) ;

void mz_stream_delete(void **stream)
{
    mz_stream *strm = ((void*)0);
    if (stream == ((void*)0))
        return;
    strm = (mz_stream *)*stream;
    if (strm != ((void*)0) && strm->vtbl != ((void*)0) && strm->vtbl->destroy != ((void*)0))
        strm->vtbl->destroy(stream);
    *stream = ((void*)0);
}
