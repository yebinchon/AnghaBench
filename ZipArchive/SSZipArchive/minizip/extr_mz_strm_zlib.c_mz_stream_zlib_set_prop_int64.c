
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int window_bits; int max_total_in; int level; } ;
typedef TYPE_1__ mz_stream_zlib ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;


 int MZ_EXIST_ERROR ;
 int MZ_OK ;




int32_t mz_stream_zlib_set_prop_int64(void *stream, int32_t prop, int64_t value)
{
    mz_stream_zlib *zlib = (mz_stream_zlib *)stream;
    switch (prop)
    {
    case 130:
        zlib->level = (int16_t)value;
        break;
    case 128:
        zlib->max_total_in = value;
        break;
    case 129:
        zlib->window_bits = (int32_t)value;
        break;
    default:
        return MZ_EXIST_ERROR;
    }
    return MZ_OK;
}
