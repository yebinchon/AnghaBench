
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* vtbl; } ;
typedef TYPE_2__ mz_stream ;
typedef int int32_t ;
struct TYPE_4__ {int (* open ) (TYPE_2__*,char const*,int ) ;} ;


 int MZ_STREAM_ERROR ;
 int stub1 (TYPE_2__*,char const*,int ) ;

int32_t mz_stream_open(void *stream, const char *path, int32_t mode)
{
    mz_stream *strm = (mz_stream *)stream;
    if (strm == ((void*)0) || strm->vtbl == ((void*)0) || strm->vtbl->open == ((void*)0))
        return MZ_STREAM_ERROR;
    return strm->vtbl->open(strm, path, mode);
}
