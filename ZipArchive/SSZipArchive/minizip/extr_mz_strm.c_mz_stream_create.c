
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* (* create ) (void**) ;} ;
typedef TYPE_1__ mz_stream_vtbl ;


 void* stub1 (void**) ;

void *mz_stream_create(void **stream, mz_stream_vtbl *vtbl)
{
    if (stream == ((void*)0))
        return ((void*)0);
    if (vtbl == ((void*)0) || vtbl->create == ((void*)0))
        return ((void*)0);
    return vtbl->create(stream);
}
