
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; } ;
struct TYPE_4__ {TYPE_1__ stream; } ;
typedef TYPE_2__ mz_stream_split ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 scalar_t__ mz_stream_close (int ) ;
 scalar_t__ mz_stream_is_open (int ) ;
 int mz_stream_split_print (char*) ;

__attribute__((used)) static int32_t mz_stream_split_close_disk(void *stream)
{
    mz_stream_split *split = (mz_stream_split *)stream;

    if (mz_stream_is_open(split->stream.base) != MZ_OK)
        return MZ_OK;

    mz_stream_split_print("Split - Close disk\n");
    return mz_stream_close(split->stream.base);
}
