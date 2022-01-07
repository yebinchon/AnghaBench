
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int window_bits; int total_out; int max_total_in; int total_in; } ;
typedef TYPE_1__ mz_stream_zlib ;
typedef int int64_t ;
typedef int int32_t ;


 int MZ_EXIST_ERROR ;
 int MZ_OK ;






int32_t mz_stream_zlib_get_prop_int64(void *stream, int32_t prop, int64_t *value)
{
    mz_stream_zlib *zlib = (mz_stream_zlib *)stream;
    switch (prop)
    {
    case 130:
        *value = zlib->total_in;
        break;
    case 129:
        *value = zlib->max_total_in;
        break;
    case 128:
        *value = zlib->total_out;
        break;
    case 131:
        *value = 0;
        break;
    case 132:
        *value = zlib->window_bits;
         break;
    default:
        return MZ_EXIST_ERROR;
    }
    return MZ_OK;
}
