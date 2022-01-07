
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* vtbl; } ;
typedef TYPE_2__ mz_stream ;
typedef int int64_t ;
typedef int int32_t ;
struct TYPE_3__ {int (* get_prop_int64 ) (void*,int ,int *) ;} ;


 int MZ_PARAM_ERROR ;
 int stub1 (void*,int ,int *) ;

int32_t mz_stream_get_prop_int64(void *stream, int32_t prop, int64_t *value)
{
    mz_stream *strm = (mz_stream *)stream;
    if (strm == ((void*)0) || strm->vtbl == ((void*)0) || strm->vtbl->get_prop_int64 == ((void*)0))
        return MZ_PARAM_ERROR;
    return strm->vtbl->get_prop_int64(stream, prop, value);
}
