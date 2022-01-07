
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; } ;
struct TYPE_4__ {TYPE_1__ stream; int number_disk; } ;
typedef TYPE_2__ mz_stream_split ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 scalar_t__ mz_stream_split_goto_disk (void*,int ) ;
 scalar_t__ mz_stream_tell (int ) ;

int64_t mz_stream_split_tell(void *stream)
{
    mz_stream_split *split = (mz_stream_split *)stream;
    int32_t err = MZ_OK;
    err = mz_stream_split_goto_disk(stream, split->number_disk);
    if (err != MZ_OK)
        return err;
    return mz_stream_tell(split->stream.base);
}
