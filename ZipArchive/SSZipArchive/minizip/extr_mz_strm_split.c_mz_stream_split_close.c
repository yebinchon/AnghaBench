
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ is_open; } ;
typedef TYPE_1__ mz_stream_split ;
typedef int int32_t ;


 int MZ_OK ;
 int mz_stream_split_close_disk (void*) ;

int32_t mz_stream_split_close(void *stream)
{
    mz_stream_split *split = (mz_stream_split *)stream;
    int32_t err = MZ_OK;

    err = mz_stream_split_close_disk(stream);
    split->is_open = 0;
    return err;
}
