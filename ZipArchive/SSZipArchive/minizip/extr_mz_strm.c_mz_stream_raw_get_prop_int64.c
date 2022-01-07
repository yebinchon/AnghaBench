
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total_out; int total_in; } ;
typedef TYPE_1__ mz_stream_raw ;
typedef int int64_t ;
typedef int int32_t ;


 int MZ_EXIST_ERROR ;
 int MZ_OK ;



int32_t mz_stream_raw_get_prop_int64(void *stream, int32_t prop, int64_t *value)
{
    mz_stream_raw *raw = (mz_stream_raw *)stream;
    switch (prop)
    {
    case 129:
        *value = raw->total_in;
        return MZ_OK;
    case 128:
        *value = raw->total_out;
        return MZ_OK;
    }
    return MZ_EXIST_ERROR;
}
