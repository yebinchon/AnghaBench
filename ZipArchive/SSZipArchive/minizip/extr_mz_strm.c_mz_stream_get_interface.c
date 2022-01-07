
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * vtbl; } ;
typedef TYPE_1__ mz_stream ;



void* mz_stream_get_interface(void *stream)
{
    mz_stream *strm = (mz_stream *)stream;
    if (strm == ((void*)0) || strm->vtbl == ((void*)0))
        return ((void*)0);
    return (void *)strm->vtbl;
}
