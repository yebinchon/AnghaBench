
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* vtbl; } ;
typedef TYPE_2__ mz_stream ;
typedef int int64_t ;
typedef int int32_t ;
struct TYPE_4__ {int (* seek ) (TYPE_2__*,int ,int ) ;} ;


 scalar_t__ MZ_OK ;
 int MZ_PARAM_ERROR ;
 int MZ_SEEK_ERROR ;
 int MZ_SEEK_SET ;
 int MZ_STREAM_ERROR ;
 scalar_t__ mz_stream_is_open (void*) ;
 int stub1 (TYPE_2__*,int ,int ) ;

int32_t mz_stream_seek(void *stream, int64_t offset, int32_t origin)
{
    mz_stream *strm = (mz_stream *)stream;
    if (strm == ((void*)0) || strm->vtbl == ((void*)0) || strm->vtbl->seek == ((void*)0))
        return MZ_PARAM_ERROR;
    if (mz_stream_is_open(stream) != MZ_OK)
        return MZ_STREAM_ERROR;
    if (origin == MZ_SEEK_SET && offset < 0)
        return MZ_SEEK_ERROR;
    return strm->vtbl->seek(strm, offset, origin);
}
