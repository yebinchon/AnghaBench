
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* vtbl; } ;
typedef TYPE_2__ mz_stream ;
typedef int int32_t ;
struct TYPE_4__ {int (* error ) (TYPE_2__*) ;} ;


 int MZ_PARAM_ERROR ;
 int stub1 (TYPE_2__*) ;

int32_t mz_stream_error(void *stream)
{
    mz_stream *strm = (mz_stream *)stream;
    if (strm == ((void*)0) || strm->vtbl == ((void*)0) || strm->vtbl->error == ((void*)0))
        return MZ_PARAM_ERROR;
    return strm->vtbl->error(strm);
}
