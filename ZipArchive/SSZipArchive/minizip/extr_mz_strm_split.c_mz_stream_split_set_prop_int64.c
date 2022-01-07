
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int number_disk; int disk_size; } ;
typedef TYPE_1__ mz_stream_split ;
typedef int int64_t ;
typedef int int32_t ;


 int MZ_EXIST_ERROR ;
 int MZ_OK ;



int32_t mz_stream_split_set_prop_int64(void *stream, int32_t prop, int64_t value)
{
    mz_stream_split *split = (mz_stream_split *)stream;
    switch (prop)
    {
    case 129:
        split->number_disk = (int32_t)value;
        break;
    case 128:
        split->disk_size = value;
        break;
    default:
        return MZ_EXIST_ERROR;
    }
    return MZ_OK;
}
